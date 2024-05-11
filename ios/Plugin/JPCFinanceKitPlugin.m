#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

// Define the plugin using the CAP_PLUGIN Macro, and
// each method the plugin supports using the CAP_PLUGIN_METHOD macro.
CAP_PLUGIN(JPCFinanceKitPlugin, "JPCFinanceKit",
   CAP_PLUGIN_METHOD(transactions, CAPPluginReturnPromise);
   CAP_PLUGIN_METHOD(accounts, CAPPluginReturnPromise);
    CAP_PLUGIN_METHOD(requestAuthorization, CAPPluginReturnNone);
    CAP_PLUGIN_METHOD(authorizationStatus, CAPPluginReturnNone);
)
