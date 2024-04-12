import { registerPlugin } from '@capacitor/core';

import type { JPCFinanceKitPlugin } from './definitions';

const JPCFinanceKit = registerPlugin<JPCFinanceKitPlugin>('JPCFinanceKit', {
  web: () => import('./web').then(m => new m.JPCFinanceKitWeb()),
});

export * from './definitions';
export { JPCFinanceKit };
