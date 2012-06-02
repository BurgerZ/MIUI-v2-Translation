.class public Lcom/android/browser/model/MiRenUrlDataProvider;
.super Landroid/content/ContentProvider;
.source "MiRenUrlDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/model/MiRenUrlDataProvider$1;,
        Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;,
        Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;
    }
.end annotation


# static fields
.field private static final BingleSearchUrl:Ljava/lang/String; = "http://m.bing.com/search/search.aspx?Q=%s&d=&dl=&pq=query&a=results&MID=1"

.field private static final GoogleSuggestionProvider_Authority:Ljava/lang/String; = "com.android.quicksearchbox.google"

.field private static final GoogleSuggestionProvider_Selection:Ljava/lang/String; = null

.field private static final LOGTAG:Ljava/lang/String; = "browser/MiRenUrlDataProvider"

.field private static final MAX_SUGGESTION_LEVEL_1_TO_3:I = 0x9

.field private static final MAX_SUGGESTION_LEVEL_1_TO_5:I = 0xf

.field public static final MIRENRURL_HISTORY_URI:Landroid/net/Uri; = null

.field public static final MIRENRURL_SEARCH_ENGINE_URI:Landroid/net/Uri; = null

.field public static final MIRENRURL_SEARCH_THE_WEB_URI:Landroid/net/Uri; = null

.field public static final MIRENRURL_URI:Landroid/net/Uri; = null

.field private static final PatternEnKeywordGroupFinder:Ljava/util/regex/Pattern; = null

.field public static final SUGGEST_COLUMN_ICON_1_ID:I = 0x6

.field public static final SUGGEST_COLUMN_ICON_2_ID:I = 0x7

.field public static final SUGGEST_COLUMN_INTENT_ACTION_ID:I = 0x1

.field public static final SUGGEST_COLUMN_INTENT_DATA_ID:I = 0x2

.field public static final SUGGEST_COLUMN_INTENT_EXTRA_DATA:I = 0x9

.field public static final SUGGEST_COLUMN_QUERY_ID:I = 0x8

.field public static final SUGGEST_COLUMN_TEXT_1_ID:I = 0x3

.field public static final SUGGEST_COLUMN_TEXT_2_ID:I = 0x4

.field public static final SUGGEST_COLUMN_TEXT_2_URL_ID:I = 0x5

.field private static final SearchableKeywordSeperator:Ljava/lang/CharSequence; = null

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field private static final URI_MATCH_HISTORY_SUGGEST:I = 0x3

.field private static final URI_MATCH_SEARCH_ENGINE_SUGGEST:I = 0x2

.field private static final URI_MATCH_SEARCH_THE_WEB_ONLY:I = 0x4

.field private static final URI_MATCH_SUGGEST:I = 0x1

.field public static final URL_HISTORY_COLUMN_BOOKMARK_ID:I = 0x2

.field public static final URL_HISTORY_COLUMN_DATE_ID:I = 0x6

.field public static final URL_HISTORY_COLUMN_SEARCHABLE_URL_ID:I = 0x4

.field public static final URL_HISTORY_COLUMN_TITLE_ID:I = 0x1

.field public static final URL_HISTORY_COLUMN_URL_ID:I = 0x0

.field public static final URL_HISTORY_COLUMN_USER_ENTERED_ID:I = 0x5

.field public static final URL_HISTORY_COLUMN_VISITS_ID:I = 0x3

.field private static final URL_HISTORY_SUGGEST_CANDIDATE:Ljava/lang/String; = "(visits > 3 OR bookmark = 1 OR user_entered = 1)"

.field private static final URL_HISTORY_SUGGEST_CN_LEVEL_1_HISTORY:Ljava/lang/String; = "(url LIKE ? OR title LIKE ?)"

.field private static final URL_HISTORY_SUGGEST_CN_LEVEL_2_TOPSITE:Ljava/lang/String; = "(url LIKE ? OR title LIKE ?)"

.field private static final URL_HISTORY_SUGGEST_EN_LEVEL_1_HISTORY:Ljava/lang/String; = "(searchable_keywords LIKE ?)"

.field private static final URL_HISTORY_SUGGEST_EN_LEVEL_2_TOPSITE:Ljava/lang/String; = "(number = ?) OR (searchable_keywords LIKE ?)"

.field private static final URL_HISTORY_SUGGEST_EN_LEVEL_5_HISTORY:Ljava/lang/String; = "(searchable_keywords NOT LIKE ? AND (url LIKE ? OR title LIKE ?))"

.field private static final URL_HISTORY_SUGGEST_EN_LEVEL_5_TOPSITE:Ljava/lang/String; = "((number <> ? AND searchable_keywords NOT LIKE ?) AND (url LIKE ? OR title LIKE ?))"

.field public static final URL_HISTORY_SUGGEST_PROJECTION:[Ljava/lang/String; = null

.field public static final URL_TOPSITE_COLUMN_INDEX_ID:I = 0x2

.field public static final URL_TOPSITE_COLUMN_SEARCHABLE_URL_ID:I = 0x3

.field public static final URL_TOPSITE_COLUMN_TITLE_ID:I = 0x1

.field public static final URL_TOPSITE_COLUMN_URL_ID:I = 0x0

.field public static final URL_TOPSITE_SUGGEST_PROJECTION:[Ljava/lang/String; = null

.field private static final UselessUrlPrefixes:[Ljava/lang/String; = null

.field private static final YandexSearchUrl:Ljava/lang/String; = "http://yandex.ru/touchsearch?&clid=1788326&text=%s"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string v7, "com.android.browser.suggest"

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/browser/model/MiRenUrlDataProvider;->GoogleSuggestionProvider_Selection:Ljava/lang/String;

    .line 51
    const-string v0, "content://com.android.browser.suggest/search_suggest_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/model/MiRenUrlDataProvider;->MIRENRURL_URI:Landroid/net/Uri;

    .line 56
    const-string v0, "content://com.android.browser.suggest/searchengine/search_suggest_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/model/MiRenUrlDataProvider;->MIRENRURL_SEARCH_ENGINE_URI:Landroid/net/Uri;

    .line 61
    const-string v0, "content://com.android.browser.suggest/history/search_suggest_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/model/MiRenUrlDataProvider;->MIRENRURL_HISTORY_URI:Landroid/net/Uri;

    .line 66
    const-string v0, "content://com.android.browser.suggest/searchthewebonly/search_suggest_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/model/MiRenUrlDataProvider;->MIRENRURL_SEARCH_THE_WEB_URI:Landroid/net/Uri;

    .line 68
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "url"

    aput-object v2, v0, v1

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "bookmark"

    aput-object v1, v0, v4

    const-string v1, "visits"

    aput-object v1, v0, v5

    const-string v1, "searchable_url"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "user_entered"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/model/MiRenUrlDataProvider;->URL_HISTORY_SUGGEST_PROJECTION:[Ljava/lang/String;

    .line 83
    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "url"

    aput-object v2, v0, v1

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "searchable_url"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/browser/model/MiRenUrlDataProvider;->URL_TOPSITE_SUGGEST_PROJECTION:[Ljava/lang/String;

    .line 95
    const-string v0, "/"

    sput-object v0, Lcom/android/browser/model/MiRenUrlDataProvider;->SearchableKeywordSeperator:Ljava/lang/CharSequence;

    .line 96
    const-string v0, "(([a-zA-Z]*)([0-9]*))+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/browser/model/MiRenUrlDataProvider;->PatternEnKeywordGroupFinder:Ljava/util/regex/Pattern;

    .line 153
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://"

    aput-object v2, v0, v1

    const-string v1, "https://"

    aput-object v1, v0, v3

    const-string v1, "www."

    aput-object v1, v0, v4

    const-string v1, "wap."

    aput-object v1, v0, v5

    const-string v1, "m."

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "3g."

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/model/MiRenUrlDataProvider;->UselessUrlPrefixes:[Ljava/lang/String;

    .line 174
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/browser/model/MiRenUrlDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 175
    sget-object v0, Lcom/android/browser/model/MiRenUrlDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.browser.suggest"

    const-string v1, "search_suggest_query"

    invoke-virtual {v0, v7, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 176
    sget-object v0, Lcom/android/browser/model/MiRenUrlDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.browser.suggest"

    const-string v1, "searchengine/search_suggest_query"

    invoke-virtual {v0, v7, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    sget-object v0, Lcom/android/browser/model/MiRenUrlDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.browser.suggest"

    const-string v1, "history/search_suggest_query"

    invoke-virtual {v0, v7, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    sget-object v0, Lcom/android/browser/model/MiRenUrlDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.browser.suggest"

    const-string v1, "searchthewebonly/search_suggest_query"

    invoke-virtual {v0, v7, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 183
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->isLetterOrDigitalOnly(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private addHistoryLevel4Result(Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "selectionArg"
    .parameter "useDefaultSearchEngineOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 750
    .local p1, allSuggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    :goto_0
    return-void

    .line 753
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/model/MiRenUrlDataProvider;->addSuggestCursor(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private addHistoryLevel5Result(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter "selectionArg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 760
    .local p1, allSuggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    invoke-static {p2}, Lcom/android/browser/model/MiRenUrlDataProvider;->isLetterOrDigitalOnly(Ljava/lang/String;)Z

    move-result v9

    .line 764
    .local v9, isEnOnlyQuery:Z
    if-eqz v9, :cond_0

    .line 767
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 771
    .local v10, like:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/model/MiRenUrlDataProvider;->URL_HISTORY_SUGGEST_PROJECTION:[Ljava/lang/String;

    const-string v3, "%s AND %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "(searchable_keywords NOT LIKE ? AND (url LIKE ? OR title LIKE ?))"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "(visits > 3 OR bookmark = 1 OR user_entered = 1)"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v10, v4, v5

    const/4 v5, 0x2

    aput-object v10, v4, v5

    const-string v5, "visits"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 780
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 781
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 782
    invoke-static {v6}, Lcom/android/browser/model/MiRenUrlDataProvider;->convertHistoryMatchingCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v11

    .line 783
    .local v11, raw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;>;"
    new-instance v0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;

    invoke-direct {v0, p2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 784
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;

    .line 785
    .local v7, entry:Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_7

    .line 792
    .end local v7           #entry:Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #raw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;>;"
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 795
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 798
    invoke-virtual {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->TOPSITE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/model/MiRenUrlDataProvider;->URL_TOPSITE_SUGGEST_PROJECTION:[Ljava/lang/String;

    const-string v3, "((number <> ? AND searchable_keywords NOT LIKE ?) AND (url LIKE ? OR title LIKE ?))"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #c:Landroid/database/Cursor;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v10, v4, v5

    const/4 v5, 0x3

    aput-object v10, v4, v5

    const-string v5, "number"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 807
    .restart local v6       #c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 808
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 809
    invoke-static {v6}, Lcom/android/browser/model/MiRenUrlDataProvider;->convertTopSiteMatchingCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v11

    .line 810
    .restart local v11       #raw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;>;"
    new-instance v0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;

    invoke-direct {v0, p2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 811
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;

    .line 812
    .restart local v7       #entry:Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_8

    .line 819
    .end local v7           #entry:Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #raw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;>;"
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 787
    .restart local v7       #entry:Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v11       #raw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;>;"
    :cond_7
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 789
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 814
    :cond_8
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 816
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private addSearchSuggestResult(Ljava/util/ArrayList;Landroid/database/Cursor;ZI)I
    .locals 10
    .parameter
    .parameter "searchSuggest"
    .parameter "useDefaultSearchEngineOnly"
    .parameter "currentSearchEngine"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;",
            ">;",
            "Landroid/database/Cursor;",
            "ZI)I"
        }
    .end annotation

    .prologue
    .local p1, resultSuggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;>;"
    const v6, 0x7f090025

    const-string v9, "suggest_intent_data"

    const-string v8, "suggest_intent_action"

    const-string v7, "0"

    const-string v5, "suggest_intent_query"

    .line 825
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 826
    :cond_0
    const/4 v2, 0x0

    .line 885
    :goto_0
    return v2

    .line 828
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_f

    .line 831
    if-eqz p3, :cond_8

    .line 832
    const-string v2, "suggest_intent_query"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 833
    .local v1, query:Ljava/lang/String;
    new-instance v2, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    invoke-direct {v2}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setText1(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v2

    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/controller/BrowserSettings;->getDefaultSearchEngine()I

    move-result v3

    invoke-static {v3}, Lcom/android/browser/model/MiRenUrlDataProvider;->getSearchEngineIcon(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIcon1(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v7}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIcon2(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setQuery(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v2

    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/controller/BrowserSettings;->getDefaultSearchEngine()I

    move-result v3

    invoke-static {v3, v1}, Lcom/android/browser/model/MiRenUrlDataProvider;->getSearchUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIntentData(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v2

    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v2, v3}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIntentAction(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v0

    .line 840
    .local v0, oneEntry:Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v2

    if-nez v2, :cond_5

    .line 841
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/controller/BrowserSettings;->getDefaultSearchEngine()I

    move-result v2

    if-nez v2, :cond_4

    .line 842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090024

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setText2(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    .line 881
    .end local v1           #query:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 882
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 845
    .restart local v1       #query:Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setText2(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    goto :goto_2

    .line 849
    :cond_5
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/controller/BrowserSettings;->getDefaultSearchEngine()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 850
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setText2(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    goto :goto_2

    .line 852
    :cond_6
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/controller/BrowserSettings;->getDefaultSearchEngine()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090026

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setText2(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    goto :goto_2

    .line 855
    :cond_7
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/controller/BrowserSettings;->getDefaultSearchEngine()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 856
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090027

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setText2(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    goto/16 :goto_2

    .line 861
    .end local v0           #oneEntry:Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    .end local v1           #query:Ljava/lang/String;
    :cond_8
    new-instance v2, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    invoke-direct {v2}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;-><init>()V

    invoke-static {p4}, Lcom/android/browser/model/MiRenUrlDataProvider;->getSearchEngineIcon(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIcon1(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v7}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIcon2(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v0

    .line 865
    .restart local v0       #oneEntry:Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    const-string v2, "suggest_text_1"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_9

    .line 866
    const-string v2, "suggest_text_1"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setText1(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    .line 867
    :cond_9
    const-string v2, "suggest_text_2"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_a

    .line 868
    const-string v2, "suggest_text_2"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setText2(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    .line 869
    :cond_a
    const-string v2, "suggest_text_2_url"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_b

    .line 870
    const-string v2, "suggest_text_2_url"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setText2Url(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    .line 871
    :cond_b
    const-string v2, "suggest_intent_query"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_c

    .line 872
    const-string v2, "suggest_intent_query"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setQuery(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    .line 873
    :cond_c
    const-string v2, "suggest_intent_action"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_d

    .line 874
    const-string v2, "suggest_intent_action"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIntentAction(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    .line 875
    :cond_d
    const-string v2, "suggest_intent_data"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_e

    .line 876
    const-string v2, "suggest_intent_data"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIntentData(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    .line 877
    :cond_e
    const-string v2, "suggest_intent_extra_data"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 878
    const-string v2, "suggest_intent_extra_data"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIntentExtra(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    goto/16 :goto_2

    .line 885
    .end local v0           #oneEntry:Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    :cond_f
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto/16 :goto_0
.end method

.method private addSuggestCursor(Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .locals 8
    .parameter
    .parameter "selection"
    .parameter "useDefaultSearchEngineOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, resultSuggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;>;"
    const/4 v7, 0x0

    const/16 v6, 0xf

    const/4 v5, 0x1

    .line 894
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v6, :cond_1

    .line 941
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v4

    if-nez v4, :cond_9

    .line 899
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 900
    .local v1, candidateSearchEngines:[I
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/controller/BrowserSettings;->getDefaultSearchEngine()I

    move-result v4

    aput v4, v1, v7

    .line 901
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/controller/BrowserSettings;->getDefaultSearchEngine()I

    move-result v4

    if-nez v4, :cond_3

    .line 902
    aput v5, v1, v5

    .line 906
    :goto_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 907
    const/4 v0, 0x0

    .line 910
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    aget v4, v1, v3

    if-nez v4, :cond_4

    .line 911
    invoke-direct {p0, p2}, Lcom/android/browser/model/MiRenUrlDataProvider;->getBaiduSuggestCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 915
    :cond_2
    :goto_3
    aget v4, v1, v3

    invoke-direct {p0, p1, v0, p3, v4}, Lcom/android/browser/model/MiRenUrlDataProvider;->addSearchSuggestResult(Ljava/util/ArrayList;Landroid/database/Cursor;ZI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 916
    .local v2, count:I
    if-eqz p3, :cond_5

    if-lez v2, :cond_5

    .line 921
    if-eqz v0, :cond_0

    .line 922
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 904
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_3
    aput v7, v1, v5

    goto :goto_1

    .line 912
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v3       #i:I
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->hasGoogleSuggestDataProvider()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 913
    invoke-direct {p0, p2}, Lcom/android/browser/model/MiRenUrlDataProvider;->getGoogleSuggestCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_3

    .line 918
    .restart local v2       #count:I
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-lt v4, v6, :cond_6

    .line 921
    if-eqz v0, :cond_0

    .line 922
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 921
    :cond_6
    if-eqz v0, :cond_7

    .line 922
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 906
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 921
    .end local v2           #count:I
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_8

    .line 922
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v4

    .line 926
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #candidateSearchEngines:[I
    .end local v3           #i:I
    :cond_9
    const/4 v0, 0x0

    .line 929
    .restart local v0       #c:Landroid/database/Cursor;
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/browser/model/MiRenUrlDataProvider;->getGoogleSuggestCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 931
    const/4 v4, 0x1

    invoke-direct {p0, p1, v0, p3, v4}, Lcom/android/browser/model/MiRenUrlDataProvider;->addSearchSuggestResult(Ljava/util/ArrayList;Landroid/database/Cursor;ZI)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    .line 932
    .restart local v2       #count:I
    if-eqz p3, :cond_a

    if-lez v2, :cond_a

    .line 937
    if-eqz v0, :cond_0

    .line 938
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 934
    :cond_a
    :try_start_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    if-lt v4, v6, :cond_b

    .line 937
    if-eqz v0, :cond_0

    .line 938
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 937
    :cond_b
    if-eqz v0, :cond_0

    .line 938
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 937
    .end local v2           #count:I
    :catchall_1
    move-exception v4

    if-eqz v0, :cond_c

    .line 938
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v4
.end method

.method private static convertHistoryMatchingCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 8
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1048
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1049
    .local v1, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1050
    new-instance v0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;-><init>(Lcom/android/browser/model/MiRenUrlDataProvider$1;)V

    .line 1052
    .local v0, oneEntry:Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->setBookmarks(I)Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->setVisits(I)Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->setDate(J)Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->setSearchableUrl(Ljava/lang/String;)Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;

    move-result-object v2

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->setUrl(Ljava/lang/String;)Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;

    move-result-object v2

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->setTitle(Ljava/lang/String;)Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;

    move-result-object v2

    invoke-static {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->getHistoryTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->setText1(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v2

    invoke-static {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->getHistoryUrl(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setText2Url(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIcon2(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v2

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setQuery(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIntentAction(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v2

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIntentData(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    .line 1065
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 1066
    const v2, 0x7f020045

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->setIcon1(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    .line 1070
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 1068
    :cond_0
    const v2, 0x7f020047

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->setIcon1(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    goto :goto_1

    .line 1073
    .end local v0           #oneEntry:Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;
    :cond_1
    return-object v1
.end method

.method private static convertTopSiteMatchingCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 6
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1022
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    .local v1, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1024
    new-instance v0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;-><init>(Lcom/android/browser/model/MiRenUrlDataProvider$1;)V

    .line 1026
    .local v0, oneEntry:Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;
    const/4 v4, 0x1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1027
    .local v2, title:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/browser/model/MiRenUrlDataProvider;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1028
    .local v3, url:Ljava/lang/String;
    const/4 v4, 0x3

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->setSearchableUrl(Ljava/lang/String;)Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->setUrl(Ljava/lang/String;)Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->setTitle(Ljava/lang/String;)Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->setIndex(Ljava/lang/String;)Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->setText1(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setText2Url(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v4

    const v5, 0x7f020045

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIcon1(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIcon2(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setQuery(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v4

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIntentAction(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIntentData(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    .line 1041
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1044
    .end local v0           #oneEntry:Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private getBaiduSuggestCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "selection"

    .prologue
    .line 972
    invoke-virtual {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.browser.baidu_suggestion"

    const/4 v2, 0x0

    const-string v3, "url LIKE ?"

    const/4 v5, -0x1

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/browser/api_v8/SearchManagerInternal;->getSuggestions(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getEnSearchableKeywords(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 987
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v5

    .line 1005
    :goto_0
    return-object v4

    .line 989
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 990
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v5

    .line 991
    goto :goto_0

    .line 993
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 994
    .local v2, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/browser/model/MiRenUrlDataProvider;->PatternEnKeywordGroupFinder:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 995
    .local v1, matcher:Ljava/util/regex/Matcher;
    :cond_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 996
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 997
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 998
    .local v3, sub:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 996
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1001
    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0           #i:I
    .end local v3           #sub:Ljava/lang/String;
    :cond_4
    move-object v4, v2

    .line 1005
    goto :goto_0
.end method

.method private getGoogleSuggestCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "selection"

    .prologue
    .line 977
    invoke-virtual {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.quicksearchbox.google"

    const/4 v2, 0x0

    sget-object v3, Lcom/android/browser/model/MiRenUrlDataProvider;->GoogleSuggestionProvider_Selection:Ljava/lang/String;

    const/4 v5, -0x1

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/browser/api_v8/SearchManagerInternal;->getSuggestions(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getHistoryEmptyInputResult()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 536
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v8, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;>;"
    invoke-virtual {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/model/MiRenUrlDataProvider;->URL_HISTORY_SUGGEST_PROJECTION:[Ljava/lang/String;

    const-string v3, "(visits > 3 OR bookmark = 1 OR user_entered = 1)"

    const/4 v4, 0x0

    const-string v5, "visits DESC, bookmark DESC, searchable_url ASC, date DESC LIMIT 9"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 546
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 547
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 548
    invoke-static {v6}, Lcom/android/browser/model/MiRenUrlDataProvider;->convertHistoryMatchingCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v7

    .line 549
    .local v7, raw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;>;"
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 551
    .end local v7           #raw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;>;"
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 554
    :cond_1
    return-object v8
.end method

.method private getHistoryLevel1Result(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .parameter "selectionArg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x9

    const-string v0, "%"

    .line 563
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    const/4 v0, 0x0

    .line 605
    :cond_0
    :goto_0
    return-object v0

    .line 566
    :cond_1
    invoke-static {p1}, Lcom/android/browser/model/MiRenUrlDataProvider;->isLetterOrDigitalOnly(Ljava/lang/String;)Z

    move-result v7

    .line 567
    .local v7, isEnOnlyQuery:Z
    const/4 v6, 0x0

    .line 570
    .local v6, c:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 571
    :try_start_0
    invoke-virtual {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/model/MiRenUrlDataProvider;->URL_HISTORY_SUGGEST_PROJECTION:[Ljava/lang/String;

    const-string v3, "%s AND %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v11, "(searchable_keywords LIKE ?)"

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const-string v11, "(visits > 3 OR bookmark = 1 OR user_entered = 1)"

    aput-object v11, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "%/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const-string v5, "visits"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 593
    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 594
    :cond_2
    const/4 v0, 0x0

    .line 604
    if-eqz v6, :cond_0

    .line 605
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 581
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 582
    .local v8, like:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/model/MiRenUrlDataProvider;->URL_HISTORY_SUGGEST_PROJECTION:[Ljava/lang/String;

    const-string v3, "%s AND %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v11, "(url LIKE ? OR title LIKE ?)"

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const-string v11, "(visits > 3 OR bookmark = 1 OR user_entered = 1)"

    aput-object v11, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v8, v4, v5

    const-string v5, "visits"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1

    .line 596
    .end local v8           #like:Ljava/lang/String;
    :cond_4
    invoke-static {v6}, Lcom/android/browser/model/MiRenUrlDataProvider;->convertHistoryMatchingCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v9

    .line 597
    .local v9, raw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;>;"
    new-instance v0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;

    invoke-direct {v0, p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 598
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v13, :cond_6

    .line 599
    const/16 v0, 0x9

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 604
    .end local v9           #raw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;>;"
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 605
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 600
    .restart local v9       #raw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;>;"
    :cond_6
    :try_start_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v10, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;>;"
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 604
    if-eqz v6, :cond_7

    .line 605
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v10

    goto/16 :goto_0
.end method

.method private getHistoryLevel2Result(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .parameter "selectionArg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x9

    const-string v0, "%"

    .line 615
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    const/4 v0, 0x0

    .line 657
    :cond_0
    :goto_0
    return-object v0

    .line 618
    :cond_1
    invoke-static {p1}, Lcom/android/browser/model/MiRenUrlDataProvider;->isLetterOrDigitalOnly(Ljava/lang/String;)Z

    move-result v7

    .line 619
    .local v7, isEnOnlyQuery:Z
    const/4 v6, 0x0

    .line 622
    .local v6, c:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 623
    :try_start_0
    invoke-virtual {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->TOPSITE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/model/MiRenUrlDataProvider;->URL_TOPSITE_SUGGEST_PROJECTION:[Ljava/lang/String;

    const-string v3, "(number = ?) OR (searchable_keywords LIKE ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "%/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const-string v5, "number"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 645
    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 646
    :cond_2
    const/4 v0, 0x0

    .line 656
    if-eqz v6, :cond_0

    .line 657
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 633
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 634
    .local v8, like:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->TOPSITE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/model/MiRenUrlDataProvider;->URL_TOPSITE_SUGGEST_PROJECTION:[Ljava/lang/String;

    const-string v3, "(url LIKE ? OR title LIKE ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v8, v4, v5

    const-string v5, "number"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1

    .line 648
    .end local v8           #like:Ljava/lang/String;
    :cond_4
    invoke-static {v6}, Lcom/android/browser/model/MiRenUrlDataProvider;->convertTopSiteMatchingCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v9

    .line 649
    .local v9, raw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;>;"
    new-instance v0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;

    invoke-direct {v0, p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 650
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v13, :cond_6

    .line 651
    const/16 v0, 0x9

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 656
    .end local v9           #raw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;>;"
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 657
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 652
    .restart local v9       #raw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;>;"
    :cond_6
    :try_start_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v10, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;>;"
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 656
    if-eqz v6, :cond_7

    .line 657
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v10

    goto/16 :goto_0
.end method

.method private getHistoryLevel3Result(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .parameter "selectionArg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 668
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 669
    const/4 v10, 0x0

    .line 743
    :goto_0
    return-object v10

    .line 671
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, " "

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 674
    .local v5, lowerCaseUrl:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v1, v10, :cond_2

    .line 675
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x100

    if-le v10, v11, :cond_1

    .line 676
    const/4 v10, 0x0

    goto :goto_0

    .line 674
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 680
    :cond_2
    const-string v10, "http://"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "https://"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 681
    const-string v10, "://"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 682
    .local v3, index:I
    if-ltz v3, :cond_3

    const/16 v10, 0x2f

    const-string v11, "://"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    if-lez v10, :cond_3

    .line 683
    const/4 v10, 0x0

    goto :goto_0

    .line 684
    :cond_3
    if-gez v3, :cond_4

    const/16 v10, 0x2f

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-lez v10, :cond_4

    .line 685
    const/4 v10, 0x0

    goto :goto_0

    .line 686
    :cond_4
    const-string v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 687
    if-lez v3, :cond_5

    const/16 v10, 0x2f

    invoke-virtual {v5, v10, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v10

    if-lez v10, :cond_5

    .line 688
    const/4 v10, 0x0

    goto :goto_0

    .line 691
    .end local v3           #index:I
    :cond_5
    :goto_2
    const-string v10, "."

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 692
    :cond_6
    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 694
    :cond_7
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v4

    .line 695
    .local v4, isInternationalVersion:Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .local v7, suffixList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, ".com"

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 697
    if-nez v4, :cond_8

    .line 698
    const-string v10, ".cn"

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    :cond_8
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_f

    .line 727
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v6, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 729
    .local v0, aSuffix:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/browser/model/MiRenUrlDataProvider;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 731
    .local v8, url:Ljava/lang/String;
    new-instance v10, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    invoke-direct {v10}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;-><init>()V

    const v11, 0x7f020047

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIcon1(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v10

    const-string v11, "0"

    invoke-virtual {v10, v11}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIcon2(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setText1(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIntentData(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v10

    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v10, v11}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIntentAction(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v9

    .line 737
    .local v9, urlEntry:Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 699
    .end local v0           #aSuffix:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;>;"
    .end local v8           #url:Ljava/lang/String;
    .end local v9           #urlEntry:Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    :cond_9
    const-string v10, ".net"

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, ".cn"

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 701
    const-string v10, ".c"

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 702
    const-string v10, "om"

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    if-nez v4, :cond_8

    .line 704
    const-string v10, "n"

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    const-string v10, "om.cn"

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 707
    :cond_a
    const-string v10, ".co"

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 708
    const-string v10, "m"

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    if-nez v4, :cond_8

    .line 710
    const-string v10, "m.cn"

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 711
    :cond_b
    const-string v10, ".n"

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 712
    const-string v10, "et"

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 713
    :cond_c
    const-string v10, ".ne"

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 714
    const-string v10, "t"

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 715
    :cond_d
    const-string v10, ".net"

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, ".cn"

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 718
    const-string v10, ".com"

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    const-string v10, ".net"

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    if-nez v4, :cond_8

    .line 721
    const-string v10, ".cn"

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    const-string v10, ".com.cn"

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v6       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;>;"
    :cond_e
    move-object v10, v6

    .line 740
    goto/16 :goto_0

    .line 743
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;>;"
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private static getHistoryTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "c"

    .prologue
    .line 1098
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1100
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/browser/api_v8/PatternsInternal;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1102
    :cond_1
    return-object v0
.end method

.method private static getHistoryUrl(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "c"

    .prologue
    .line 1112
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1114
    :cond_0
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1116
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/android/browser/api_v8/PatternsInternal;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getSearchEngineIcon(I)Ljava/lang/String;
    .locals 1
    .parameter "searchEngine"

    .prologue
    .line 944
    if-nez p0, :cond_0

    .line 945
    const v0, 0x7f020044

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 951
    :goto_0
    return-object v0

    .line 946
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 947
    const v0, 0x7f02004a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 948
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 949
    const v0, 0x7f02004c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 951
    :cond_2
    const v0, 0x7f020046

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSearchUrl(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "searchEngine"
    .parameter "query"

    .prologue
    const-string v1, "utf-8"

    .line 956
    if-nez p0, :cond_0

    .line 957
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://m.baidu.com/s?from=1269a&word="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 968
    :goto_0
    return-object v1

    .line 958
    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 959
    const-string v1, "http://m.bing.com/search/search.aspx?Q=%s&d=&dl=&pq=query&a=results&MID=1"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "utf-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 960
    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    .line 961
    const-string v1, "http://yandex.ru/touchsearch?&clid=1788326&text=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "utf-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 963
    :cond_2
    const-string v1, "http://www.google.com/m?q=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "utf-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 964
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 965
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, "browser/MiRenUrlDataProvider"

    const-string v2, "error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, p1

    .line 968
    goto :goto_0
.end method

.method public static varargs getSearchableKeywords([Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "allStrs"

    .prologue
    const/4 v7, 0x0

    .line 353
    if-eqz p0, :cond_0

    array-length v6, p0

    if-nez v6, :cond_1

    :cond_0
    move-object v6, v7

    .line 366
    :goto_0
    return-object v6

    .line 356
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 357
    .local v0, allsubs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v2, v1, v3

    .line 358
    .local v2, fullstr:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/browser/model/MiRenUrlDataProvider;->getEnSearchableKeywords(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 359
    .local v5, subs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    .line 360
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 357
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 363
    .end local v2           #fullstr:Ljava/lang/String;
    .end local v5           #subs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 364
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/browser/model/MiRenUrlDataProvider;->SearchableKeywordSeperator:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/browser/model/MiRenUrlDataProvider;->SearchableKeywordSeperator:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    move-object v6, v7

    .line 366
    goto :goto_0
.end method

.method public static handleKnownQueryPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "query"

    .prologue
    const/4 v2, 0x0

    .line 335
    if-nez p0, :cond_0

    .line 336
    const/4 v0, 0x0

    .line 347
    :goto_0
    return-object v0

    .line 338
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 339
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    .line 340
    goto :goto_0

    .line 342
    :cond_1
    sget-object v6, Lcom/android/browser/model/MiRenUrlDataProvider;->UselessUrlPrefixes:[Ljava/lang/String;

    .local v6, arr$:[Ljava/lang/String;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v3, v6, v7

    .line 343
    .local v3, prefix:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 344
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 342
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v3           #prefix:Ljava/lang/String;
    :cond_3
    move-object v0, p0

    .line 347
    goto :goto_0
.end method

.method private hasGoogleSuggestDataProvider()Z
    .locals 1

    .prologue
    .line 983
    const/4 v0, 0x1

    return v0
.end method

.method private static isLetterOrDigitalOnly(Ljava/lang/String;)Z
    .locals 4
    .parameter "query"

    .prologue
    const/4 v3, 0x1

    .line 1009
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 1018
    :goto_0
    return v2

    .line 1012
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1013
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1014
    .local v0, c:C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_1

    const/16 v2, 0x7a

    if-le v0, v2, :cond_4

    :cond_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    if-le v0, v2, :cond_4

    :cond_2
    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    const/16 v2, 0x39

    if-le v0, v2, :cond_4

    .line 1015
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1012
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #c:C
    :cond_5
    move v2, v3

    .line 1018
    goto :goto_0
.end method

.method private static normalizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "rawUrl"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v7, "https://"

    const-string v3, "http://"

    .line 1077
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1079
    .local v10, sbUrl:Ljava/lang/StringBuilder;
    const-string v0, "http://"

    const-string v0, "http://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    const-string v0, "https://"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    move-object v4, p0

    move v5, v1

    move v6, v2

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    const-string v0, "http://"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    :cond_0
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    .line 1086
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1088
    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 187
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 192
    sget-object v1, Lcom/android/browser/model/MiRenUrlDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 193
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 200
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v1

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 206
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 224
    sget-object v11, Lcom/android/browser/model/MiRenUrlDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v11, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 225
    .local v5, match:I
    const/4 v11, -0x1

    if-ne v5, v11, :cond_0

    .line 226
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Unknown URL"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 229
    :cond_0
    const/4 v11, 0x0

    aget-object v8, p4, v11

    .line 230
    .local v8, query:Ljava/lang/String;
    if-nez v8, :cond_1

    .line 231
    const-string v8, ""

    .line 232
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v0, allSuggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;>;"
    const/4 v10, 0x0

    .line 236
    .local v10, searchTheWebPos:I
    const/4 v11, 0x1

    if-eq v11, v5, :cond_2

    const/4 v11, 0x3

    if-ne v11, v5, :cond_c

    .line 241
    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 242
    new-instance v11, Lcom/android/browser/model/ArrayListSuggestionCursor;

    invoke-direct {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->getHistoryEmptyInputResult()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/browser/model/ArrayListSuggestionCursor;-><init>(Ljava/util/ArrayList;)V

    .line 325
    :goto_0
    return-object v11

    .line 245
    :cond_3
    move-object v7, v8

    .line 246
    .local v7, originalQuery:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/browser/model/MiRenUrlDataProvider;->handleKnownQueryPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 249
    invoke-direct {p0, v8}, Lcom/android/browser/model/MiRenUrlDataProvider;->getHistoryLevel1Result(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mergeToList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 252
    .local v1, countLevel1And2:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v12, 0x9

    if-ge v11, v12, :cond_4

    .line 254
    invoke-direct {p0, v8}, Lcom/android/browser/model/MiRenUrlDataProvider;->getHistoryLevel2Result(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mergeToList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 255
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 257
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v12, 0x9

    if-ge v11, v12, :cond_4

    .line 260
    invoke-direct {p0, v7}, Lcom/android/browser/model/MiRenUrlDataProvider;->getHistoryLevel3Result(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mergeToList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 264
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 265
    .local v2, countLevel1To3:I
    const/4 v11, 0x3

    if-ne v5, v11, :cond_9

    .line 266
    move v10, v2

    .line 278
    :goto_1
    const/4 v4, -0x1

    .line 279
    .local v4, firstSearchSuggestionPos:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v12, 0xf

    if-ge v11, v12, :cond_6

    .line 280
    const/4 v11, 0x1

    if-ne v11, v5, :cond_5

    .line 281
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 284
    .local v6, oldsize:I
    const/4 v11, 0x0

    invoke-direct {p0, v0, v8, v11}, Lcom/android/browser/model/MiRenUrlDataProvider;->addHistoryLevel4Result(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 285
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v6, :cond_5

    .line 286
    move v4, v6

    .line 290
    .end local v6           #oldsize:I
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v12, 0xf

    if-ge v11, v12, :cond_6

    .line 292
    invoke-direct {p0, v0, v8}, Lcom/android/browser/model/MiRenUrlDataProvider;->addHistoryLevel5Result(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 298
    :cond_6
    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v11, 0x2

    if-lt v4, v11, :cond_7

    if-nez v1, :cond_7

    .line 299
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    .line 300
    .local v3, firstSearchSuggestion:Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 301
    const/4 v11, 0x1

    invoke-virtual {v0, v11, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 314
    .end local v1           #countLevel1And2:I
    .end local v2           #countLevel1To3:I
    .end local v3           #firstSearchSuggestion:Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    .end local v4           #firstSearchSuggestionPos:I
    .end local v7           #originalQuery:Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 315
    new-instance v11, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    invoke-direct {v11}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;-><init>()V

    invoke-virtual {v11, v8}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setText1(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/browser/model/MiRenUrlDataProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f090022

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setText2(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v11

    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/browser/controller/BrowserSettings;->getDefaultSearchEngine()I

    move-result v12

    invoke-static {v12}, Lcom/android/browser/model/MiRenUrlDataProvider;->getSearchEngineIcon(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIcon1(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v11

    const-string v12, "0"

    invoke-virtual {v11, v12}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIcon2(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setQuery(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v11

    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/browser/controller/BrowserSettings;->getDefaultSearchEngine()I

    move-result v12

    invoke-static {v12, v8}, Lcom/android/browser/model/MiRenUrlDataProvider;->getSearchUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIntentData(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v11

    const-string v12, "android.intent.action.SEARCH"

    invoke-virtual {v11, v12}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->setIntentAction(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-result-object v9

    .line 323
    .local v9, searchTheWebEntry:Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    invoke-virtual {v0, v10, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 325
    .end local v9           #searchTheWebEntry:Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    :cond_8
    new-instance v11, Lcom/android/browser/model/ArrayListSuggestionCursor;

    invoke-direct {v11, v0}, Lcom/android/browser/model/ArrayListSuggestionCursor;-><init>(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 273
    .restart local v1       #countLevel1And2:I
    .restart local v2       #countLevel1To3:I
    .restart local v7       #originalQuery:Ljava/lang/String;
    :cond_9
    const/4 v11, 0x2

    if-lt v1, v11, :cond_a

    .line 274
    const/4 v10, 0x2

    goto/16 :goto_1

    .line 276
    :cond_a
    if-lez v2, :cond_b

    const/4 v11, 0x1

    move v10, v11

    :goto_3
    goto/16 :goto_1

    :cond_b
    const/4 v11, 0x0

    move v10, v11

    goto :goto_3

    .line 303
    .end local v1           #countLevel1And2:I
    .end local v2           #countLevel1To3:I
    .end local v7           #originalQuery:Ljava/lang/String;
    :cond_c
    const/4 v11, 0x2

    if-ne v11, v5, :cond_d

    .line 307
    const/4 v11, 0x1

    invoke-direct {p0, v0, v8, v11}, Lcom/android/browser/model/MiRenUrlDataProvider;->addSuggestCursor(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    goto :goto_2

    .line 308
    :cond_d
    const/4 v11, 0x4

    if-eq v11, v5, :cond_7

    .line 311
    new-instance v11, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v11}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v11
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
