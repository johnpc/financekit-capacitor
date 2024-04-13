import Foundation
import FinanceKit

var fs = FinanceStore.shared;
public class JPCFinanceKit: NSObject {
    public func accounts() async throws -> [Account] {
            return try await fs.accounts(query: AccountQuery(sortDescriptors: []))
    }
    
    public func transactions() async throws -> [Transaction] {
        func addOrSubtractMonth(month: Int) -> Date {
            Calendar.current.date(byAdding: .month, value: month, to: Date())!
        }
        let oneMonthAgo = addOrSubtractMonth(month: -1)
        
        let transactionPredicate = #Predicate<Transaction> { transaction in
            transaction.merchantName != nil && transaction.transactionDate >= oneMonthAgo
        }
            return try await fs.transactions(query: TransactionQuery(sortDescriptors: [], predicate: transactionPredicate))
    }

    @objc public func requestAuthorization() -> String {
        Task {
            do {
                var _ = try await fs.requestAuthorization()
            }catch {
                print("Error")
            }

        }
        return "Success"
    }
}
