export interface JPCFinanceKitPlugin {
  transactions(): Promise<{value: {amount: number, id: string, merchantName: string, date: number, status: number, description: string}[]}>;
  accounts(): Promise<{name: string, id: string}[]>;
  requestAuthorization(): Promise<void>;
}
