import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(JPCFinanceKitPlugin)
public class JPCFinanceKitPlugin: CAPPlugin {
    private let implementation = JPCFinanceKit()

    @objc func accounts(_ call: CAPPluginCall) {
        Task {
            do {
                let accounts = try await implementation.accounts();
                if (!accounts.isEmpty) {
                   call.resolve([
                    "value": accounts.map{ ["name": $0.displayName, "id": $0.id.uuidString] }
                    ])
                } else {
                   call.reject("my error")
                }
            } catch {
                call.reject("my error")
            }
        }
    }

    @objc func transactions(_ call: CAPPluginCall) {
        Task {
            do {
                let transactions = try await implementation.transactions();
                if (!transactions.isEmpty) {
                   call.resolve([
                    "value": transactions.map{ ["amount": $0.transactionAmount.amount, "id": $0.id.uuidString, "merchantName": $0.merchantName, "date": $0.transactionDate.timeIntervalSince1970, "status": $0.status.rawValue, "description": $0.originalTransactionDescription, "type": $0.transactionType
                        .rawValue] }
                    ])
                } else {
                   call.reject("my error")
                }
            } catch {
                call.reject("my error")
            }
        }
    }


    @objc func requestAuthorization(_ call: CAPPluginCall) {
        implementation.requestAuthorization()
    }
}
