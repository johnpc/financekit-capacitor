export interface JPCFinanceKitPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
