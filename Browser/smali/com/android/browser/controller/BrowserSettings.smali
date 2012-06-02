.class public Lcom/android/browser/controller/BrowserSettings;
.super Ljava/util/Observable;
.source "BrowserSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/controller/BrowserSettings$FlashSupportSetter;,
        Lcom/android/browser/controller/BrowserSettings$Observer;,
        Lcom/android/browser/controller/BrowserSettings$ClickAction;,
        Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;,
        Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;,
        Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;,
        Lcom/android/browser/controller/BrowserSettings$VolumeSettingEnableOption;,
        Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;,
        Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;,
        Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;,
        Lcom/android/browser/controller/BrowserSettings$Keys;
    }
.end annotation


# static fields
.field public static DEFAULT_USERAGENT:Ljava/lang/String; = null

.field public static final DESKTOP_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_5; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1"

.field public static final IPAD_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; zh-cn) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B367 Safari/531.21.10"

.field public static final IPHONE3_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

.field public static final IPHONE4_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_1 like Mac OS X; zh-cn) AppleWebKit/532.9 (KHTML, like Gecko) Version/4.0.5 Mobile/8B117 Safari/6531.22.7"

.field private static final LOG_TAG:Ljava/lang/String; = "com.android.browser.controller.BrowserSettings"

.field public static final MAX_TEXTVIEW_LEN:I = 0x50

.field public static final NAVIGATE_PAGE_TOPSITES_TOPLIMIT:I = 0x1e

.field public static final PREF_HIDE_BUTTONS_IN_FULLSCREEN_ALL:Ljava/lang/String; = "ALL"

.field public static final PREF_HIDE_BUTTONS_IN_FULLSCREEN_AUTO:Ljava/lang/String; = "AUTO"

.field public static final PREF_HIDE_BUTTONS_IN_FULLSCREEN_EXCEPT_FULLSCREEN:Ljava/lang/String; = "EXCEPT_FULLSCREEN"

.field public static final PREF_HIDE_BUTTONS_IN_FULLSCREEN_NEEDED:Ljava/lang/String; = "NEEDED"

.field public static final PREF_HIDE_BUTTONS_IN_FULLSCREEN_NEVER:Ljava/lang/String; = "NEVER_SHOW"

.field public static final PREF_HIDE_STATUSBAR_AUTO:Ljava/lang/String; = "AUTO"

.field public static final PREF_HIDE_STATUSBAR_SHOW_ALWAYS:Ljava/lang/String; = "ALWAYS_SHOW"

.field public static final PREF_HIDE_STATUSBAR_SHOW_NEVER:Ljava/lang/String; = "ALWAYS_HIDE"

.field protected static final TAG:Ljava/lang/String; = "BrowserSettings"

.field public static final UseSearchEngine_Baidu:I = 0x0

.field public static final UseSearchEngine_Bing:I = 0x2

.field public static final UseSearchEngine_Google:I = 0x1

.field public static final UseSearchEngine_Yandex:I = 0x3

.field protected static defaultFixedFontSize:I

.field protected static defaultFontSize:I

.field protected static mActivity:Lcom/android/browser/ui/MiRenBrowserActivity;

.field private static mAppID:I

.field protected static minimumFontSize:I

.field protected static minimumLogicalFontSize:I

.field protected static pageCacheCapacity:I

.field protected static sSingleton:Lcom/android/browser/controller/BrowserSettings;

.field protected static textSize:Landroid/webkit/WebSettings$TextSize;

.field protected static zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;


# instance fields
.field protected alwaysShowTabBar:Z

.field protected appCacheEnabled:Z

.field protected appCacheMaxSize:J

.field protected appCachePath:Ljava/lang/String;

.field protected askForLauncherSetting:Z

.field protected autoEnterFullscreen:Z

.field protected databaseEnabled:Z

.field protected databasePath:Ljava/lang/String;

.field protected defaultSearchEngine:I

.field protected defaultTextEncodingName:Ljava/lang/String;

.field protected domStorageEnabled:Z

.field protected flashSupport:Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;

.field protected forumModeOption:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

.field protected geolocationDatabasePath:Ljava/lang/String;

.field protected geolocationEnabled:Z

.field protected hideButtonsInFullScreen:Ljava/lang/String;

.field protected hideStatusBarAlways:Ljava/lang/String;

.field protected homeUrl:Ljava/lang/String;

.field protected isNightModeOn:Z

.field protected isWapSupported:Z

.field protected javaScriptCanOpenWindowsAutomatically:Z

.field protected javaScriptEnabled:Z

.field protected jsFlags:Ljava/lang/String;

.field protected landscapeOnly:Z

.field public layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field protected leftRightGestureChoice:Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;

.field protected lightTouch:Z

.field protected loadsImagesChoice:Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;

.field protected loadsPageInOverviewMode:Z

.field protected longClickAction:Lcom/android/browser/controller/BrowserSettings$ClickAction;

.field private mContext:Landroid/app/Activity;

.field protected mWebViewsToObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/browser/ui/MiRenWebViewCore;",
            "Lcom/android/browser/controller/BrowserSettings$Observer;",
            ">;"
        }
    .end annotation
.end field

.field protected navDump:Z

.field protected openInBackground:Z

.field protected readingModeOption:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

.field protected rememberPasswords:Z

.field protected saveFormData:Z

.field private screenBrightness:F

.field protected showConsole:Z

.field protected showExitFullScreenTip:Z

.field protected showSecurityWarnings:Z

.field protected showTabBarInLoading:Z

.field protected simpleModeChoice:Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;

.field protected singleClickAction:Lcom/android/browser/controller/BrowserSettings$ClickAction;

.field protected tracing:Z

.field protected useWideViewPort:Z

.field protected userAgentString:Ljava/lang/String;

.field protected volumeSettingChoice:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

.field protected volumeSettingEnableOption:Lcom/android/browser/controller/BrowserSettings$VolumeSettingEnableOption;

.field protected webStorageSizeManager:Lcom/android/browser/controller/WebStorageSizeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 183
    sput v0, Lcom/android/browser/controller/BrowserSettings;->minimumFontSize:I

    .line 184
    sput v0, Lcom/android/browser/controller/BrowserSettings;->minimumLogicalFontSize:I

    .line 185
    const/16 v0, 0x10

    sput v0, Lcom/android/browser/controller/BrowserSettings;->defaultFontSize:I

    .line 186
    const/16 v0, 0xd

    sput v0, Lcom/android/browser/controller/BrowserSettings;->defaultFixedFontSize:I

    .line 187
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    sput-object v0, Lcom/android/browser/controller/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    .line 189
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    sput-object v0, Lcom/android/browser/controller/BrowserSettings;->zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;

    .line 205
    const/4 v0, 0x0

    sput-object v0, Lcom/android/browser/controller/BrowserSettings;->DEFAULT_USERAGENT:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, ""

    .line 892
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 124
    const-string v0, ""

    iput-object v4, p0, Lcom/android/browser/controller/BrowserSettings;->homeUrl:Ljava/lang/String;

    .line 125
    iput-boolean v2, p0, Lcom/android/browser/controller/BrowserSettings;->landscapeOnly:Z

    .line 128
    iput v2, p0, Lcom/android/browser/controller/BrowserSettings;->defaultSearchEngine:I

    .line 149
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/browser/controller/BrowserSettings;->appCacheMaxSize:J

    .line 154
    const-string v0, ""

    iput-object v4, p0, Lcom/android/browser/controller/BrowserSettings;->jsFlags:Ljava/lang/String;

    .line 159
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 161
    iput-boolean v3, p0, Lcom/android/browser/controller/BrowserSettings;->useWideViewPort:Z

    .line 162
    iput-boolean v2, p0, Lcom/android/browser/controller/BrowserSettings;->tracing:Z

    .line 163
    iput-boolean v2, p0, Lcom/android/browser/controller/BrowserSettings;->lightTouch:Z

    .line 164
    iput-boolean v2, p0, Lcom/android/browser/controller/BrowserSettings;->navDump:Z

    .line 166
    iput-boolean v2, p0, Lcom/android/browser/controller/BrowserSettings;->isNightModeOn:Z

    .line 180
    iput-boolean v3, p0, Lcom/android/browser/controller/BrowserSettings;->showConsole:Z

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->mWebViewsToObservers:Ljava/util/HashMap;

    .line 279
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/browser/controller/BrowserSettings;->screenBrightness:F

    .line 893
    invoke-virtual {p0}, Lcom/android/browser/controller/BrowserSettings;->reset()V

    .line 894
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/controller/BrowserSettings;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method public static getInstance()Lcom/android/browser/controller/BrowserSettings;
    .locals 1

    .prologue
    .line 736
    sget-object v0, Lcom/android/browser/controller/BrowserSettings;->sSingleton:Lcom/android/browser/controller/BrowserSettings;

    if-nez v0, :cond_0

    .line 737
    new-instance v0, Lcom/android/browser/controller/BrowserSettings;

    invoke-direct {v0}, Lcom/android/browser/controller/BrowserSettings;-><init>()V

    sput-object v0, Lcom/android/browser/controller/BrowserSettings;->sSingleton:Lcom/android/browser/controller/BrowserSettings;

    .line 739
    :cond_0
    sget-object v0, Lcom/android/browser/controller/BrowserSettings;->sSingleton:Lcom/android/browser/controller/BrowserSettings;

    return-object v0
.end method

.method public static getOneUniqueAppID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1035
    sget v0, Lcom/android/browser/controller/BrowserSettings;->mAppID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/browser/controller/BrowserSettings;->mAppID:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 1036
    const/4 v0, 0x1

    sput v0, Lcom/android/browser/controller/BrowserSettings;->mAppID:I

    .line 1038
    :cond_0
    sget v0, Lcom/android/browser/controller/BrowserSettings;->mAppID:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addObserver(Lcom/android/browser/ui/MiRenWebViewCore;)Lcom/android/browser/controller/BrowserSettings$Observer;
    .locals 3
    .parameter "webView"

    .prologue
    .line 709
    iget-object v2, p0, Lcom/android/browser/controller/BrowserSettings;->mWebViewsToObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/controller/BrowserSettings$Observer;

    .line 710
    .local v1, old:Lcom/android/browser/controller/BrowserSettings$Observer;
    if-eqz v1, :cond_0

    .line 711
    invoke-super {p0, v1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 713
    :cond_0
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$Observer;

    invoke-direct {v0, p1}, Lcom/android/browser/controller/BrowserSettings$Observer;-><init>(Lcom/android/browser/ui/MiRenWebViewCore;)V

    .line 714
    .local v0, o:Lcom/android/browser/controller/BrowserSettings$Observer;
    iget-object v2, p0, Lcom/android/browser/controller/BrowserSettings;->mWebViewsToObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    invoke-super {p0, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 716
    return-object v0
.end method

.method public clearCache(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 866
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebIconDatabase;->removeAllIcons()V

    .line 867
    sget-object v0, Lcom/android/browser/controller/BrowserSettings;->mActivity:Lcom/android/browser/ui/MiRenBrowserActivity;

    if-eqz v0, :cond_0

    .line 868
    sget-object v0, Lcom/android/browser/controller/BrowserSettings;->mActivity:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getDummyWebview()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 870
    :cond_0
    return-void
.end method

.method public clearCookies(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 832
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 833
    return-void
.end method

.method public clearDatabases(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 873
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 874
    return-void
.end method

.method public clearFormData(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 853
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearFormData()V

    .line 854
    sget-object v0, Lcom/android/browser/controller/BrowserSettings;->mActivity:Lcom/android/browser/ui/MiRenBrowserActivity;

    if-eqz v0, :cond_0

    .line 855
    sget-object v0, Lcom/android/browser/controller/BrowserSettings;->mActivity:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getTabController()Lcom/android/browser/controller/TabController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->clearFormData()V

    .line 857
    :cond_0
    return-void
.end method

.method public clearHistory(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-string v5, "com.android.browser.controller.BrowserSettings"

    .line 836
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 839
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "bookmark = 0 AND folder_id IS NULL"

    .line 841
    .local v2, where:Ljava/lang/String;
    sget-object v3, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 844
    :try_start_0
    invoke-static {v1}, Landroid/provider/Browser;->clearSearches(Landroid/content/ContentResolver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 850
    :goto_0
    return-void

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "com.android.browser.controller.BrowserSettings"

    const-string v3, "Error, no search provider is registered in the device"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 847
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 848
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "com.android.browser.controller.BrowserSettings"

    const-string v3, "Error, DB access error"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearLocationAccess(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 877
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    .line 878
    return-void
.end method

.method public clearPasswords(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 860
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    .line 861
    .local v0, db:Landroid/webkit/WebViewDatabase;
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearUsernamePassword()V

    .line 862
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    .line 863
    return-void
.end method

.method public deleteObserver(Lcom/android/browser/ui/MiRenWebViewCore;)V
    .locals 2
    .parameter "webView"

    .prologue
    .line 724
    iget-object v1, p0, Lcom/android/browser/controller/BrowserSettings;->mWebViewsToObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/controller/BrowserSettings$Observer;

    .line 725
    .local v0, o:Lcom/android/browser/controller/BrowserSettings$Observer;
    if-eqz v0, :cond_0

    .line 726
    iget-object v1, p0, Lcom/android/browser/controller/BrowserSettings;->mWebViewsToObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    invoke-super {p0, v0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 729
    :cond_0
    return-void
.end method

.method public exportData(Landroid/app/Activity;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 755
    sget-object v0, Lcom/android/browser/util/MirenConstants;->BACKUP_PATH:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/browser/controller/ImportExportBookmarks;->exportBookmarks(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAlwaysShowTabBar()Z
    .locals 1

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/android/browser/controller/BrowserSettings;->alwaysShowTabBar:Z

    return v0
.end method

.method public getAskForLauncherSettings()Z
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/android/browser/controller/BrowserSettings;->askForLauncherSetting:Z

    return v0
.end method

.method public getAutoClearCacheOnExit(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 691
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 692
    .local v0, p:Landroid/content/SharedPreferences;
    sget-object v1, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_AUTO_CLEAR_CACHE_EXIT:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v1, v1, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getAutoEnterFullscreen()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/android/browser/controller/BrowserSettings;->autoEnterFullscreen:Z

    return v0
.end method

.method protected getClickActionFromString(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$ClickAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 1020
    const-string v0, "DEFAULT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$ClickAction;->CLICK_ACTION_DEFAULT:Lcom/android/browser/controller/BrowserSettings$ClickAction;

    .line 1027
    :goto_0
    return-object v0

    .line 1023
    :cond_0
    const-string v0, "NEW_TAB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1024
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$ClickAction;->CLICK_ACTION_OPEN_IN_NEW_TAB:Lcom/android/browser/controller/BrowserSettings$ClickAction;

    goto :goto_0

    .line 1027
    :cond_1
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$ClickAction;->CLICK_ACTION_OPEN_IN_BACKGROUND_TAB:Lcom/android/browser/controller/BrowserSettings$ClickAction;

    goto :goto_0
.end method

.method public getDefaultSearchEngine()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/android/browser/controller/BrowserSettings;->defaultSearchEngine:I

    return v0
.end method

.method public getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 625
    sget-object v0, Lcom/android/browser/controller/BrowserSettings;->zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method

.method protected getDisplayPluginChoiceFromString(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 987
    const-string v0, "ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;->DISPLAY_PLUGIN_ON:Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;

    .line 994
    :goto_0
    return-object v0

    .line 990
    :cond_0
    const-string v0, "ON_DEMAND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 991
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;->DISPLAY_PLUGIN_ON_DEMAND:Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;

    goto :goto_0

    .line 994
    :cond_1
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;->DISPLAY_PLUGIN_OFF:Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;

    goto :goto_0
.end method

.method public getExitConfirmation(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 680
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 681
    .local v0, p:Landroid/content/SharedPreferences;
    sget-object v1, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_EXIT_CONFIRMATION:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v1, v1, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getFlashSupport()Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->flashSupport:Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;

    return-object v0
.end method

.method public getForumModeOption()Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->forumModeOption:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    return-object v0
.end method

.method public getHideButtonsInFullScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->hideButtonsInFullScreen:Ljava/lang/String;

    return-object v0
.end method

.method public getHideStatusBarAlways()Z
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->hideStatusBarAlways:Ljava/lang/String;

    const-string v1, "ALWAYS_HIDE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getHomePage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->homeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsInNightMode()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/android/browser/controller/BrowserSettings;->isNightModeOn:Z

    return v0
.end method

.method public getIsWAPSupport()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/android/browser/controller/BrowserSettings;->isWapSupported:Z

    return v0
.end method

.method public getJsFlags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->jsFlags:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftRightGestureChoice()Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;
    .locals 1

    .prologue
    .line 660
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;->LEFT_RIGHT_GESTURE_NONE:Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;

    return-object v0
.end method

.method protected getLeftRightGestureFromString(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 1009
    const-string v0, "NONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;->LEFT_RIGHT_GESTURE_NONE:Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;

    .line 1016
    :goto_0
    return-object v0

    .line 1012
    :cond_0
    const-string v0, "BACK_FORWARD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;->LEFT_RIGHT_GESTURE_GO_BACK_FORWARD:Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;

    goto :goto_0

    .line 1016
    :cond_1
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;->LEFT_RIGHT_GESTURE_SWITCH_TABS:Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;

    goto :goto_0
.end method

.method public getLoadImageMode()Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->loadsImagesChoice:Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;

    return-object v0
.end method

.method protected getLoadImageModeOptionFromString(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 933
    const-string v0, "OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;->LOAD_IMAGE_MODE_OFF:Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;

    .line 938
    :goto_0
    return-object v0

    .line 935
    :cond_0
    const-string v0, "ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 936
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;->LOAD_IMAGE_MODE_ON:Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;

    goto :goto_0

    .line 938
    :cond_1
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;->LOAD_IMAGE_MODE_ON_FOR_WIFI:Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;

    goto :goto_0
.end method

.method public getLongClickAction()Lcom/android/browser/controller/BrowserSettings$ClickAction;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->longClickAction:Lcom/android/browser/controller/BrowserSettings$ClickAction;

    return-object v0
.end method

.method public getReadingModeOption()Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->readingModeOption:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    return-object v0
.end method

.method public getScreenBrightness()F
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Lcom/android/browser/controller/BrowserSettings;->screenBrightness:F

    return v0
.end method

.method public getShowExitFullScreenTip()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/android/browser/controller/BrowserSettings;->showExitFullScreenTip:Z

    return v0
.end method

.method public getShowStatusBarAlways()Z
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->hideStatusBarAlways:Ljava/lang/String;

    const-string v1, "ALWAYS_SHOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getShowTabBarInLoading()Z
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/android/browser/controller/BrowserSettings;->showTabBarInLoading:Z

    return v0
.end method

.method public getSimpleModeChoice()Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->simpleModeChoice:Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;

    return-object v0
.end method

.method protected getSimpleModeOptionsFromString(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 957
    const-string v0, "OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;->SIMPLE_MODE_OFF:Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;

    .line 964
    :goto_0
    return-object v0

    .line 960
    :cond_0
    const-string v0, "ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;->SIMPLE_MODE_ON:Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;

    goto :goto_0

    .line 964
    :cond_1
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;->SIMPLE_MODE_ON_FOR_NON_WIFI:Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;

    goto :goto_0
.end method

.method public getSingleClickAction()Lcom/android/browser/controller/BrowserSettings$ClickAction;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->singleClickAction:Lcom/android/browser/controller/BrowserSettings$ClickAction;

    return-object v0
.end method

.method protected getSpecialModeOptionFromString(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 998
    const-string v0, "AUTO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;->ENTER_AUTOMATICALLY:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    .line 1005
    :goto_0
    return-object v0

    .line 1001
    :cond_0
    const-string v0, "MANU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1002
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;->ENTER_MANUALLY:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    goto :goto_0

    .line 1005
    :cond_1
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;->OFF:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    goto :goto_0
.end method

.method public getTextSize()Landroid/webkit/WebSettings$TextSize;
    .locals 1

    .prologue
    .line 621
    sget-object v0, Lcom/android/browser/controller/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->userAgentString:Ljava/lang/String;

    return-object v0
.end method

.method protected getUserAgentFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 970
    const-string v0, "CHROME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    const-string v0, "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_5; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1"

    .line 983
    :goto_0
    return-object v0

    .line 973
    :cond_0
    const-string v0, "IPHONE3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    goto :goto_0

    .line 976
    :cond_1
    const-string v0, "IPHONE4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 977
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_1 like Mac OS X; zh-cn) AppleWebKit/532.9 (KHTML, like Gecko) Version/4.0.5 Mobile/8B117 Safari/6531.22.7"

    goto :goto_0

    .line 979
    :cond_2
    const-string v0, "IPAD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 980
    const-string v0, "Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; zh-cn) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B367 Safari/531.21.10"

    goto :goto_0

    .line 983
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVolumeButtonEnableOption()Lcom/android/browser/controller/BrowserSettings$VolumeSettingEnableOption;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->volumeSettingEnableOption:Lcom/android/browser/controller/BrowserSettings$VolumeSettingEnableOption;

    return-object v0
.end method

.method public getVolumeButtonMode()Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->volumeSettingChoice:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    return-object v0
.end method

.method protected getVolumeButtonSettingOptionFromString(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 943
    const-string v0, "DEFAULT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;->VOLUME_BUTTON_DEFAULT:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    .line 948
    :goto_0
    return-object v0

    .line 945
    :cond_0
    const-string v0, "SWITCH_TAB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 946
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;->VOLUME_BUTTON_SWITCH_TAB:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    goto :goto_0

    .line 948
    :cond_1
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;->VOLUME_BUTTON_SCROLL_PAGE:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    goto :goto_0
.end method

.method protected getVolumeSettingEnableOptionFromString(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$VolumeSettingEnableOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 953
    const-string v0, "ALWAYS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/browser/controller/BrowserSettings$VolumeSettingEnableOption;->VOLUME_BUTTON_ENABLE_ALWAYS:Lcom/android/browser/controller/BrowserSettings$VolumeSettingEnableOption;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$VolumeSettingEnableOption;->VOLUME_BUTTON_ENABLE_ONLY_NO_MUSIC:Lcom/android/browser/controller/BrowserSettings$VolumeSettingEnableOption;

    goto :goto_0
.end method

.method public getWebStorageSizeManager()Lcom/android/browser/controller/WebStorageSizeManager;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->webStorageSizeManager:Lcom/android/browser/controller/WebStorageSizeManager;

    return-object v0
.end method

.method public importData(Landroid/app/Activity;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 790
    iput-object p1, p0, Lcom/android/browser/controller/BrowserSettings;->mContext:Landroid/app/Activity;

    .line 791
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/browser/controller/BrowserSettings;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 792
    .local v0, pDialog:Landroid/app/ProgressDialog;
    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 793
    iget-object v1, p0, Lcom/android/browser/controller/BrowserSettings;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 794
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 795
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 797
    new-instance v1, Lcom/android/browser/controller/BrowserSettings$1;

    invoke-direct {v1, p0, v0}, Lcom/android/browser/controller/BrowserSettings$1;-><init>(Lcom/android/browser/controller/BrowserSettings;Landroid/app/ProgressDialog;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/browser/controller/BrowserSettings$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 829
    return-void
.end method

.method public isLightTouch()Z
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Lcom/android/browser/controller/BrowserSettings;->lightTouch:Z

    return v0
.end method

.method public loadFromDb(Landroid/content/Context;)V
    .locals 9
    .parameter "ctx"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, ""

    .line 369
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 372
    .local v1, p:Landroid/content/SharedPreferences;
    const-string v2, "appcache"

    invoke-virtual {p1, v2, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/controller/BrowserSettings;->appCachePath:Ljava/lang/String;

    .line 376
    new-instance v2, Lcom/android/browser/controller/WebStorageSizeManager;

    new-instance v3, Lcom/android/browser/controller/WebStorageSizeManager$StatFsDiskInfo;

    iget-object v4, p0, Lcom/android/browser/controller/BrowserSettings;->appCachePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/android/browser/controller/WebStorageSizeManager$StatFsDiskInfo;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/android/browser/controller/WebStorageSizeManager$WebKitAppCacheInfo;

    iget-object v5, p0, Lcom/android/browser/controller/BrowserSettings;->appCachePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/browser/controller/WebStorageSizeManager$WebKitAppCacheInfo;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p1, v3, v4}, Lcom/android/browser/controller/WebStorageSizeManager;-><init>(Landroid/content/Context;Lcom/android/browser/controller/WebStorageSizeManager$DiskInfo;Lcom/android/browser/controller/WebStorageSizeManager$AppCacheInfo;)V

    iput-object v2, p0, Lcom/android/browser/controller/BrowserSettings;->webStorageSizeManager:Lcom/android/browser/controller/WebStorageSizeManager;

    .line 379
    iget-object v2, p0, Lcom/android/browser/controller/BrowserSettings;->webStorageSizeManager:Lcom/android/browser/controller/WebStorageSizeManager;

    invoke-virtual {v2}, Lcom/android/browser/controller/WebStorageSizeManager;->getAppCacheMaxSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/browser/controller/BrowserSettings;->appCacheMaxSize:J

    .line 382
    const-string v2, "databases"

    invoke-virtual {p1, v2, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/controller/BrowserSettings;->databasePath:Ljava/lang/String;

    .line 384
    const-string v2, "geolocation"

    invoke-virtual {p1, v2, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/controller/BrowserSettings;->geolocationDatabasePath:Ljava/lang/String;

    .line 387
    sget-object v2, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_HOMEPAGE:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v2, v2, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-ne v2, v8, :cond_0

    .line 389
    const-string v2, "miui:home"

    invoke-virtual {p0, p1, v2}, Lcom/android/browser/controller/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 392
    :cond_0
    sput v7, Lcom/android/browser/controller/BrowserSettings;->pageCacheCapacity:I

    .line 397
    invoke-virtual {p0, v1}, Lcom/android/browser/controller/BrowserSettings;->syncSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 399
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 401
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_1

    .line 402
    const/4 v2, 0x5

    sput v2, Lcom/android/browser/controller/BrowserSettings;->pageCacheCapacity:I

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_1
    sput v7, Lcom/android/browser/controller/BrowserSettings;->pageCacheCapacity:I

    goto :goto_0
.end method

.method public openInBackground()Z
    .locals 1

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/android/browser/controller/BrowserSettings;->openInBackground:Z

    return v0
.end method

.method protected reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 901
    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->defaultTextEncodingName:Ljava/lang/String;

    .line 902
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;->LOAD_IMAGE_MODE_ON:Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;

    iput-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->loadsImagesChoice:Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;

    .line 903
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;->VOLUME_BUTTON_SCROLL_PAGE:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    iput-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->volumeSettingChoice:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    .line 904
    iput-boolean v1, p0, Lcom/android/browser/controller/BrowserSettings;->javaScriptEnabled:Z

    .line 905
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;->DISPLAY_PLUGIN_ON_DEMAND:Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;

    iput-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->flashSupport:Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;

    .line 906
    iput-boolean v2, p0, Lcom/android/browser/controller/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    .line 907
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;->ENTER_MANUALLY:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    iput-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->readingModeOption:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    .line 908
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;->ENTER_MANUALLY:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    iput-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->forumModeOption:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    .line 909
    iput v2, p0, Lcom/android/browser/controller/BrowserSettings;->defaultSearchEngine:I

    .line 910
    iput-boolean v1, p0, Lcom/android/browser/controller/BrowserSettings;->showExitFullScreenTip:Z

    .line 911
    iput-boolean v1, p0, Lcom/android/browser/controller/BrowserSettings;->autoEnterFullscreen:Z

    .line 912
    iput-boolean v2, p0, Lcom/android/browser/controller/BrowserSettings;->alwaysShowTabBar:Z

    .line 913
    const-string v0, "AUTO"

    iput-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->hideButtonsInFullScreen:Ljava/lang/String;

    .line 914
    iput-boolean v2, p0, Lcom/android/browser/controller/BrowserSettings;->showTabBarInLoading:Z

    .line 915
    const-string v0, "ALWAYS_SHOW"

    iput-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->hideStatusBarAlways:Ljava/lang/String;

    .line 916
    iput-boolean v1, p0, Lcom/android/browser/controller/BrowserSettings;->askForLauncherSetting:Z

    .line 917
    iput-boolean v1, p0, Lcom/android/browser/controller/BrowserSettings;->showSecurityWarnings:Z

    .line 918
    iput-boolean v1, p0, Lcom/android/browser/controller/BrowserSettings;->rememberPasswords:Z

    .line 919
    iput-boolean v1, p0, Lcom/android/browser/controller/BrowserSettings;->saveFormData:Z

    .line 920
    iput-boolean v2, p0, Lcom/android/browser/controller/BrowserSettings;->openInBackground:Z

    .line 921
    iput-boolean v2, p0, Lcom/android/browser/controller/BrowserSettings;->landscapeOnly:Z

    .line 922
    iput-boolean v2, p0, Lcom/android/browser/controller/BrowserSettings;->loadsPageInOverviewMode:Z

    .line 924
    iput-boolean v1, p0, Lcom/android/browser/controller/BrowserSettings;->appCacheEnabled:Z

    .line 925
    iput-boolean v1, p0, Lcom/android/browser/controller/BrowserSettings;->databaseEnabled:Z

    .line 926
    iput-boolean v1, p0, Lcom/android/browser/controller/BrowserSettings;->domStorageEnabled:Z

    .line 927
    iput-boolean v1, p0, Lcom/android/browser/controller/BrowserSettings;->geolocationEnabled:Z

    .line 928
    sget-object v0, Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;->SIMPLE_MODE_OFF:Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;

    iput-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->simpleModeChoice:Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;

    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/controller/BrowserSettings;->userAgentString:Ljava/lang/String;

    .line 930
    return-void
.end method

.method public resetDefaultPreferences(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/android/browser/controller/BrowserSettings;->reset()V

    .line 882
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 884
    .local v0, p:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 885
    const v1, 0x7f050001

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 888
    const-string v1, "miui:home"

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/controller/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 889
    return-void
.end method

.method public resetHideButtonsInFullScreen()V
    .locals 3

    .prologue
    .line 584
    sget-object v1, Lcom/android/browser/controller/BrowserSettings;->mActivity:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 585
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_HIDE_BUTTONS_IN_FULLSCREEN:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v1, v1, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const-string v2, "AUTO"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 586
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 587
    return-void
.end method

.method public setActivity(Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 743
    sput-object p1, Lcom/android/browser/controller/BrowserSettings;->mActivity:Lcom/android/browser/ui/MiRenBrowserActivity;

    .line 744
    return-void
.end method

.method public setAskForLauncherSettings(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 557
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 558
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ASK_FOR_LAUNCHER_SETTING:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v1, v1, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 559
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 560
    iput-boolean p2, p0, Lcom/android/browser/controller/BrowserSettings;->askForLauncherSetting:Z

    .line 561
    return-void
.end method

.method public setAutoClearCacheOnExit(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 696
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 697
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_AUTO_CLEAR_CACHE_EXIT:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v1, v1, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 698
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 699
    return-void
.end method

.method public setAutoEnterFullscreen(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 564
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 565
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_AUTO_ENTER_FULLSCREEN:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v1, v1, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 566
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 567
    iput-boolean p2, p0, Lcom/android/browser/controller/BrowserSettings;->autoEnterFullscreen:Z

    .line 568
    return-void
.end method

.method public setDefaultSearchEngine(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "value"

    .prologue
    .line 541
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 543
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 546
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 547
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_DEFAULT_SEARCH_ENGINE:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v1, v1, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 548
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 549
    iput p2, p0, Lcom/android/browser/controller/BrowserSettings;->defaultSearchEngine:I

    .line 550
    return-void
.end method

.method public setExitConfirmation(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 685
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 686
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_EXIT_CONFIRMATION:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v1, v1, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 687
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 688
    return-void
.end method

.method public setFlashSupport(Landroid/webkit/WebSettings;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 764
    new-instance v0, Lcom/android/browser/controller/BrowserSettings$FlashSupportSetter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/controller/BrowserSettings$FlashSupportSetter;-><init>(Lcom/android/browser/controller/BrowserSettings;Lcom/android/browser/controller/BrowserSettings$1;)V

    .line 765
    .local v0, setter:Lcom/android/browser/controller/BrowserSettings$FlashSupportSetter;
    invoke-virtual {v0, p1}, Lcom/android/browser/controller/BrowserSettings$FlashSupportSetter;->setFlashSupport(Landroid/webkit/WebSettings;)V

    .line 766
    return-void
.end method

.method public setHomePage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "url"

    .prologue
    .line 613
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 615
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_HOMEPAGE:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v1, v1, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 616
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 617
    iput-object p2, p0, Lcom/android/browser/controller/BrowserSettings;->homeUrl:Ljava/lang/String;

    .line 618
    return-void
.end method

.method public setIsInNightMode(Z)V
    .locals 1
    .parameter "nightMode"

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/android/browser/controller/BrowserSettings;->isNightModeOn:Z

    if-eq v0, p1, :cond_0

    .line 519
    iput-boolean p1, p0, Lcom/android/browser/controller/BrowserSettings;->isNightModeOn:Z

    .line 520
    invoke-virtual {p0}, Lcom/android/browser/controller/BrowserSettings;->update()V

    .line 522
    :cond_0
    return-void
.end method

.method public setScreenBrightness(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 514
    iput p1, p0, Lcom/android/browser/controller/BrowserSettings;->screenBrightness:F

    .line 515
    return-void
.end method

.method public setShowExitFullScreenTip(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 606
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 607
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_SHOW_EXIT_FULL_SCREEN_TIP:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v1, v1, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 608
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 609
    iput-boolean p2, p0, Lcom/android/browser/controller/BrowserSettings;->showExitFullScreenTip:Z

    .line 610
    return-void
.end method

.method public setSimpleModeOff(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 664
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 665
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_SIMPLE_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v1, v1, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const-string v2, "OFF"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 666
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 668
    sget-object v1, Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;->SIMPLE_MODE_OFF:Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;

    iput-object v1, p0, Lcom/android/browser/controller/BrowserSettings;->simpleModeChoice:Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;

    .line 669
    return-void
.end method

.method public setWAPSupport(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 492
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 493
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_WAP_SUPPORT:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v1, v1, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 494
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 495
    return-void
.end method

.method public showSecurityWarnings()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/android/browser/controller/BrowserSettings;->showSecurityWarnings:Z

    return v0
.end method

.method public syncSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 13
    .parameter "p"

    .prologue
    .line 410
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_HOMEPAGE:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/browser/controller/BrowserSettings;->homeUrl:Ljava/lang/String;

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/browser/controller/BrowserSettings;->homeUrl:Ljava/lang/String;

    .line 413
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_LOAD_IMAGES:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const-string v12, "ON"

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/browser/controller/BrowserSettings;->getLoadImageModeOptionFromString(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;

    move-result-object v11

    iput-object v11, p0, Lcom/android/browser/controller/BrowserSettings;->loadsImagesChoice:Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;

    .line 415
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_VOLUME_SETTING:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const-string v12, "SCROLL_PAGE"

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 416
    .local v9, volumeScollChoiceString:Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/android/browser/controller/BrowserSettings;->getVolumeButtonSettingOptionFromString(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    move-result-object v11

    iput-object v11, p0, Lcom/android/browser/controller/BrowserSettings;->volumeSettingChoice:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    .line 417
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ENABLE_VOLUME_OPTION:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const-string v12, "ONLY_NO_MUSIC"

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 418
    .local v10, volumeSettingEnableString:Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/android/browser/controller/BrowserSettings;->getVolumeSettingEnableOptionFromString(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$VolumeSettingEnableOption;

    move-result-object v11

    iput-object v11, p0, Lcom/android/browser/controller/BrowserSettings;->volumeSettingEnableOption:Lcom/android/browser/controller/BrowserSettings$VolumeSettingEnableOption;

    .line 420
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_PLUGIN_SUPPORT:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const-string v12, "ON_DEMAND"

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, flashSupportString:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/browser/controller/BrowserSettings;->getDisplayPluginChoiceFromString(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;

    move-result-object v11

    iput-object v11, p0, Lcom/android/browser/controller/BrowserSettings;->flashSupport:Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;

    .line 423
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_READING_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const-string v12, "MANU"

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 424
    .local v4, readingModeOptStr:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/browser/controller/BrowserSettings;->getSpecialModeOptionFromString(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    move-result-object v11

    iput-object v11, p0, Lcom/android/browser/controller/BrowserSettings;->readingModeOption:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    .line 426
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_FORUM_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const-string v12, "MANU"

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, forumModeOptStr:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/browser/controller/BrowserSettings;->getSpecialModeOptionFromString(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    move-result-object v11

    iput-object v11, p0, Lcom/android/browser/controller/BrowserSettings;->forumModeOption:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    .line 429
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v11

    if-nez v11, :cond_1

    .line 430
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_DEFAULT_SEARCH_ENGINE:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/browser/controller/BrowserSettings;->defaultSearchEngine:I

    .line 433
    :goto_0
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_SHOW_EXIT_FULL_SCREEN_TIP:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/browser/controller/BrowserSettings;->showExitFullScreenTip:Z

    .line 434
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_AUTO_ENTER_FULLSCREEN:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/browser/controller/BrowserSettings;->autoEnterFullscreen:Z

    .line 435
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ASK_FOR_LAUNCHER_SETTING:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/browser/controller/BrowserSettings;->askForLauncherSetting:Z

    .line 436
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ALWAYS_SHOW_TABBAR:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/browser/controller/BrowserSettings;->alwaysShowTabBar:Z

    .line 437
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_HIDE_BUTTONS_IN_FULLSCREEN:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const-string v12, "AUTO"

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/browser/controller/BrowserSettings;->hideButtonsInFullScreen:Ljava/lang/String;

    .line 438
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_SHOW_TABBAR_IN_LOADING:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/browser/controller/BrowserSettings;->showTabBarInLoading:Z

    .line 439
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_HIDE_STATUS_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const-string v12, "ALWAYS_SHOW"

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/browser/controller/BrowserSettings;->hideStatusBarAlways:Ljava/lang/String;

    .line 441
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v11

    if-nez v11, :cond_2

    .line 442
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_WAP_SUPPORT:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/browser/controller/BrowserSettings;->isWapSupported:Z

    .line 446
    :goto_1
    const-string v7, "block_popup_windows"

    .line 447
    .local v7, string:Ljava/lang/String;
    iget-boolean v11, p0, Lcom/android/browser/controller/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    if-nez v11, :cond_3

    const/4 v11, 0x1

    :goto_2
    invoke-interface {p1, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v11, 0x1

    :goto_3
    iput-boolean v11, p0, Lcom/android/browser/controller/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    .line 449
    const-string v11, "remember_passwords"

    iget-boolean v12, p0, Lcom/android/browser/controller/BrowserSettings;->rememberPasswords:Z

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/browser/controller/BrowserSettings;->rememberPasswords:Z

    .line 450
    const-string v11, "save_formdata"

    iget-boolean v12, p0, Lcom/android/browser/controller/BrowserSettings;->saveFormData:Z

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/browser/controller/BrowserSettings;->saveFormData:Z

    .line 452
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_TEXT_SIZE:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    sget-object v12, Lcom/android/browser/controller/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v12}, Landroid/webkit/WebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/webkit/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;

    move-result-object v11

    sput-object v11, Lcom/android/browser/controller/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    .line 454
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_DEFAULT_TEXT_ENCODING:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const-string v12, "utf-8"

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/browser/controller/BrowserSettings;->defaultTextEncodingName:Ljava/lang/String;

    .line 456
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_OVERVIEW_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/browser/controller/BrowserSettings;->loadsPageInOverviewMode:Z

    .line 458
    const-string v11, "landscape_only"

    iget-boolean v12, p0, Lcom/android/browser/controller/BrowserSettings;->landscapeOnly:Z

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 459
    .local v2, landscapeOnlyTemp:Z
    iget-boolean v11, p0, Lcom/android/browser/controller/BrowserSettings;->landscapeOnly:Z

    if-eq v2, v11, :cond_0

    .line 460
    iput-boolean v2, p0, Lcom/android/browser/controller/BrowserSettings;->landscapeOnly:Z

    .line 463
    :cond_0
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_SIMPLE_MODE:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const-string v12, "OFF"

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 464
    .local v5, simpleMode:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/browser/controller/BrowserSettings;->getSimpleModeOptionsFromString(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;

    move-result-object v11

    iput-object v11, p0, Lcom/android/browser/controller/BrowserSettings;->simpleModeChoice:Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;

    .line 466
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_USER_AGENT:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const-string v12, "DEFAULT"

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 467
    .local v8, userAgentChoice:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/browser/controller/BrowserSettings;->getUserAgentFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/browser/controller/BrowserSettings;->userAgentString:Ljava/lang/String;

    .line 472
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_SINGLE_CLICK_ACTION:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const-string v12, "DEFAULT"

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 473
    .local v6, singleClickString:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/browser/controller/BrowserSettings;->getClickActionFromString(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$ClickAction;

    move-result-object v11

    iput-object v11, p0, Lcom/android/browser/controller/BrowserSettings;->singleClickAction:Lcom/android/browser/controller/BrowserSettings$ClickAction;

    .line 475
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_LONG_CLICK_ACTION:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const-string v12, "DEFAULT"

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, longClickString:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/browser/controller/BrowserSettings;->getClickActionFromString(Ljava/lang/String;)Lcom/android/browser/controller/BrowserSettings$ClickAction;

    move-result-object v11

    iput-object v11, p0, Lcom/android/browser/controller/BrowserSettings;->longClickAction:Lcom/android/browser/controller/BrowserSettings$ClickAction;

    .line 479
    const-string v11, "enable_appcache"

    iget-boolean v12, p0, Lcom/android/browser/controller/BrowserSettings;->appCacheEnabled:Z

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/browser/controller/BrowserSettings;->appCacheEnabled:Z

    .line 480
    const-string v11, "enable_database"

    iget-boolean v12, p0, Lcom/android/browser/controller/BrowserSettings;->databaseEnabled:Z

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/browser/controller/BrowserSettings;->databaseEnabled:Z

    .line 481
    const-string v11, "enable_domstorage"

    iget-boolean v12, p0, Lcom/android/browser/controller/BrowserSettings;->domStorageEnabled:Z

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/browser/controller/BrowserSettings;->domStorageEnabled:Z

    .line 482
    const-string v11, "enable_geolocation"

    iget-boolean v12, p0, Lcom/android/browser/controller/BrowserSettings;->geolocationEnabled:Z

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/browser/controller/BrowserSettings;->geolocationEnabled:Z

    .line 484
    invoke-virtual {p0}, Lcom/android/browser/controller/BrowserSettings;->update()V

    .line 485
    return-void

    .line 432
    .end local v2           #landscapeOnlyTemp:Z
    .end local v3           #longClickString:Ljava/lang/String;
    .end local v5           #simpleMode:Ljava/lang/String;
    .end local v6           #singleClickString:Ljava/lang/String;
    .end local v7           #string:Ljava/lang/String;
    .end local v8           #userAgentChoice:Ljava/lang/String;
    :cond_1
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_DEFAULT_SEARCH_ENGINE:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const/4 v12, 0x3

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/browser/controller/BrowserSettings;->defaultSearchEngine:I

    goto/16 :goto_0

    .line 444
    :cond_2
    sget-object v11, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_WAP_SUPPORT:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v11, v11, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/browser/controller/BrowserSettings;->isWapSupported:Z

    goto/16 :goto_1

    .line 447
    .restart local v7       #string:Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_3
.end method

.method public update()V
    .locals 0

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/android/browser/controller/BrowserSettings;->setChanged()V

    .line 751
    invoke-virtual {p0}, Lcom/android/browser/controller/BrowserSettings;->notifyObservers()V

    .line 752
    return-void
.end method
