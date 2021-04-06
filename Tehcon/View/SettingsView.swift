//
//  SettingsView.swift
//  Tehcon
//
//  Created by Sergei Volkov on 12.03.2021.
//

import SwiftUI
import MessageUI

struct SettingsView: View {
    
    var data = [
        LangData(title: "English", code: "en"),
        LangData(title: "Russian", code: "ru"),
    ]
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.colorScheme) var colorScheme
    
    @State var mailResult: Result<MFMailComposeResult, Error>? = nil
    @State private var sheet: SheetTypes? = nil
    
    @ObservedObject var purchaseVM = IAPManager.shared
    
    private func openUrl(openurl: URL?) {
        if let url = openurl {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    var body: some View {
        
        LoadingView(isShowing: $purchaseVM.purchaseLoading, text: purchaseVM.purchasingText) {
            NavigationView {
                
                Form {
                    Section(header: Text("Purchases")) {
                        FeedbackButtonView(buttonText: LocalTxt.removeAds, image: "ads_stop", disableButton: false, action: {
                            if !purchaseVM.products.isEmpty {
                                purchaseVM.purshase(product: purchaseVM.products.first!)
                            }
                        })
                        FeedbackButtonView(buttonText: LocalTxt.restorePurchases, systemName: "purchased.circle", disableButton: false, action: {
                            purchaseVM.restoreCompletedTransaction()
                        })
                    }
                    .listRowBackground(Color.settingsViewBackground)

                    Section(header: Text("Feedback")) {
                        FeedbackButtonView(buttonText: LocalTxt.sendEmailToTheDeveloper, systemName: "envelope", disableButton: !MFMailComposeViewController.canSendMail(), action: {
                            if MFMailComposeViewController.canSendMail() {
                                sheet = .sendMail
                            }
                        })
                        FeedbackButtonView(buttonText: LocalTxt.rateApp, systemName: "star", disableButton: false, action: {
                            openUrl(openurl: AppId.appUrl)
                        })
                        FeedbackButtonView(buttonText: LocalTxt.otherApplications, systemName: "apps.iphone.badge.plus",  disableButton: false, action: {
                            openUrl(openurl: AppId.developerUrl)
                        })
                    }
                    .listRowBackground(Color.settingsViewBackground)
                    
//                    ForEach(data) { item in
//                        Button(action: {
//                            presentationMode.wrappedValue.dismiss()
//                            AMPLocalizeUtils.defaultLocalizer.setSelectedLanguage(lang: item.code)
//                        }, label: {
//                            Text(item.title)
//                        })
//                        
//                    }
//                    .listRowBackground(Color.settingsViewBackground)
                }
                .background((colorScheme == .dark ? Color.black : Color.systemGray6)
                                .ignoresSafeArea())
                .navigationTitle(NSLocalizedString("Settings", comment: ""))
                .toolbar(content: {
                    ToolbarItem(placement: .primaryAction) {
                        Button(NSLocalizedString("Cancel", comment: "")) {
                            presentationMode.wrappedValue.dismiss()
                        }
                    }
                })
                
                
            }
        }
        
        
        .sheet(item: $sheet) { item in
            switch item {
            case .sendMail:
                MailView(result: $mailResult,
                         recipients: [AppId.feedbackEmail],
                         messageBody: LocalTxt.feedbackOnApplication)
            default: EmptyView()
            }

        }
        .alert(isPresented: $purchaseVM.showAlert, content: {
            Alert(title: Text(purchaseVM.alertTitle), message: Text(purchaseVM.alertBody), dismissButton: .cancel(Text("OK")))
        })
        .onAppear {
            //UITableView.appearance().backgroundColor = .clear
            purchaseVM.getProducts()
        }
        .onDisappear() {
            purchaseVM.purchaseLoading = false
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

struct LangData: Identifiable {
    var id = UUID()
    let title: String
    let code: String
}
