export interface JPCFinanceKitPlugin {
  transactions(): Promise<{value: {amount: number, id: string, merchantName: string, date: number, status: number, description: string, type: number}[]}>;
  accounts(): Promise<{name: string, id: string}[]>;
  requestAuthorization(): Promise<void>;
}
