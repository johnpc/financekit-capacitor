import { WebPlugin } from '@capacitor/core';

import type { JPCFinanceKitPlugin } from './definitions';

export class JPCFinanceKitWeb extends WebPlugin implements JPCFinanceKitPlugin {
  async accounts(): Promise<{name: string, id: string}[]> {
    throw this.unimplemented('Not implemented on web.');
  }

  async transactions(): Promise<{value: {amount: number, id: string, merchantName: string, date: number, status: number, description: string}[]}> {
    throw this.unimplemented('Not implemented on web.');
  }

  async requestAuthorization(): Promise<void> {
    throw this.unimplemented('Not implemented on web.');
  }
}
