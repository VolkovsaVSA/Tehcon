//
//  IAPManager.swift
//  Created by Sergei Volkov on 11.02.2021.
//  Copyright © 2021 Home. All rights reserved.
//

import Foundation
import StoreKit

class IAPManager: NSObject, ObservableObject {
    private override init() {}
    
    @Published var purchaseLoading = false
    @Published var purchasingText = ""
    @Published var showAlert = false
    @Published var alertTitle = ""
    @Published var alertBody = ""
    
    static let shared = IAPManager()
    var products: [SKProduct] = []
    
    enum Products: String, CaseIterable {
        case TehconRemoveAds
    }
    
//    enum ProductsState: String {
//        case restored = "RestoredParchase"
//        case errored = "ErroredPurchase"
//        case completed = "CompletedPurchase"
//    }
//    
    public func setupPurchases(completion: @escaping(Bool)->()) {
        if SKPaymentQueue.canMakePayments() {
            SKPaymentQueue.default().add(self)
            completion(true)
            return
        }
        completion(false)
    }
    public func getProducts() {
        print(#function)
        let identifires: Set = [
            Products.TehconRemoveAds.rawValue
        ]
        let productRequest = SKProductsRequest(productIdentifiers: identifires)
        productRequest.delegate = self
        productRequest.start()
    }
    public func priceOfProduct(product: SKProduct) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.locale = product.priceLocale
        return numberFormatter.string(from: product.price) ?? ""
    }
    public func purshase(product: SKProduct) {
        startObserving()
        DispatchQueue.main.async {
            self.purchaseLoading = true
            self.purchasingText = LocalTxt.purchasing
        }
        let payment = SKPayment(product: product)
        SKPaymentQueue.default().add(payment)
    }
    public func restoreCompletedTransaction() {
        DispatchQueue.main.async {
            self.purchaseLoading = true
            self.purchasingText = LocalTxt.restoring
        }
        SKPaymentQueue.default().restoreCompletedTransactions()
    }
    
    public func startObserving() {
        SKPaymentQueue.default().add(self)
    }
    func stopObserving() {
        SKPaymentQueue.default().remove(self)
    }
    
}


extension IAPManager: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, removedTransactions transactions: [SKPaymentTransaction]) {
        print(#function)
}
    
    func paymentQueue(_ queue: SKPaymentQueue, restoreCompletedTransactionsFailedWithError error: Error) {
        print(#function)
        DispatchQueue.main.async {
            self.purchaseLoading = false
            self.alertTitle = LocalTxt.restorePurchasesError
            self.alertBody = error.localizedDescription
            self.showAlert = true
        }
    }
    
    func paymentQueueRestoreCompletedTransactionsFinished(_ queue: SKPaymentQueue) {
        print(#function)
        DispatchQueue.main.async {
            self.purchaseLoading = false
            self.alertTitle = LocalTxt.success
            self.alertBody = LocalTxt.purchasesRestored
            self.showAlert = true
        }
    }
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedDownloads downloads: [SKDownload]) {
        print(#function)
    }
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        print(#function)
        for transaction in transactions {
            switch transaction.transactionState {
            case .deferred:
                print("deferred")
                break
            case .purchasing:
                print("purchasing")
                break
            case .failed: failed(transaction: transaction)
            case .purchased: completed(transaction: transaction)
            case .restored: restored(transaction: transaction)
            @unknown default:
                print("unknown")
                break
            }
        }
    }
    private func failed(transaction: SKPaymentTransaction) {
        print(#function)
        
        if let transactionError = transaction.error as NSError? {
            if transactionError.code != SKError.paymentCancelled.rawValue {
                print("transaction error \(transactionError.localizedDescription)")
                DispatchQueue.main.async {
                    self.alertTitle = LocalTxt.error
                    self.alertBody = transactionError.localizedDescription
                    self.showAlert = true
                }
            }
        }
        
        finishTransaction(transaction)
    }
    private func completed(transaction: SKPaymentTransaction) {
        print(#function)
        UserDefaults.standard.setValue(true, forKey: UDKeys.fv)
        finishTransaction(transaction)
    }
    private func restored(transaction: SKPaymentTransaction) {
        print(#function)
        UserDefaults.standard.setValue(true, forKey: UDKeys.fv)
        finishTransaction(transaction)
    }
    
    private func finishTransaction(_ transaction: SKPaymentTransaction) {
        DispatchQueue.main.async {
            self.purchaseLoading = false
        }
        SKPaymentQueue.default().finishTransaction(transaction)
    }
   
}

extension IAPManager: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        self.products = response.products
        print(#function, #line, self.products.description)
    }
    public func request(_ request: SKRequest, didFailWithError error: Error) {
        print("\(#function) \(error.localizedDescription)")
    }
    public func requestDidFinish(_ request: SKRequest) {
        print("\(#function)")
    }
}
