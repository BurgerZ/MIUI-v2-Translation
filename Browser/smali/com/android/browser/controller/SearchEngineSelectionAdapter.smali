.class public Lcom/android/browser/controller/SearchEngineSelectionAdapter;
.super Landroid/widget/CursorAdapter;
.source "SearchEngineSelectionAdapter.java"


# static fields
.field private static COUNT_ITEMS:I

.field public static POSITION_BAIDU:I

.field public static POSITION_BING:I

.field public static POSITION_GOOGLE:I

.field private static POSITION_HEADER:I

.field public static POSITION_YANDEX:I

.field private static mDummyCursor:Lcom/android/browser/model/JSONArraySuggestionCursor;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 22
    sput v3, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->POSITION_HEADER:I

    .line 23
    sput v0, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->POSITION_BAIDU:I

    .line 24
    sput v0, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->POSITION_GOOGLE:I

    .line 25
    sput v0, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->POSITION_BING:I

    .line 26
    sput v0, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->POSITION_YANDEX:I

    .line 28
    const/4 v0, 0x3

    sput v0, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->COUNT_ITEMS:I

    .line 34
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 36
    .local v1, data:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    :try_start_0
    sget v0, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->COUNT_ITEMS:I

    if-ge v7, v0, :cond_0

    .line 37
    invoke-virtual {v1, v7, v7}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 39
    .local v6, e:Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 41
    .end local v6           #e:Lorg/json/JSONException;
    :cond_0
    new-instance v0, Lcom/android/browser/model/JSONArraySuggestionCursor;

    const-string v2, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/model/JSONArraySuggestionCursor;-><init>(Lorg/json/JSONArray;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->mDummyCursor:Lcom/android/browser/model/JSONArraySuggestionCursor;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 46
    iput-object p1, p0, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sput v1, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->POSITION_GOOGLE:I

    .line 49
    sput v2, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->POSITION_BING:I

    .line 50
    sput v3, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->POSITION_YANDEX:I

    .line 51
    const/4 v0, 0x4

    sput v0, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->COUNT_ITEMS:I

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    sput v1, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->POSITION_BAIDU:I

    .line 54
    sput v2, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->POSITION_GOOGLE:I

    .line 55
    sput v3, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->COUNT_ITEMS:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/browser/controller/SearchEngineSelectionAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 147
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 75
    const-string v0, ""

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->COUNT_ITEMS:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v8, 0x7f0d004a

    const v7, 0x7f02002f

    const v6, 0x7f02002e

    const v5, 0x7f0d0049

    const v4, 0x7f0d004b

    .line 80
    sget v2, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->POSITION_HEADER:I

    if-ne p1, v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 82
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030016

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 84
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    .line 141
    .end local v0           #layoutInflater:Landroid/view/LayoutInflater;
    :goto_0
    return-object p2

    .line 86
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 88
    .restart local v0       #layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030017

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/LinearLayout;

    .line 91
    .end local v0           #layoutInflater:Landroid/view/LayoutInflater;
    .restart local p2
    :cond_2
    sget v2, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->POSITION_BAIDU:I

    if-ne p1, v2, :cond_4

    .line 92
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020049

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900b9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 94
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/controller/BrowserSettings;->getDefaultSearchEngine()I

    move-result v2

    if-nez v2, :cond_3

    .line 95
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    :goto_1
    move v1, p1

    .line 124
    .local v1, pos:I
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    .line 125
    new-instance v2, Lcom/android/browser/controller/SearchEngineSelectionAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/android/browser/controller/SearchEngineSelectionAdapter$1;-><init>(Lcom/android/browser/controller/SearchEngineSelectionAdapter;I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 97
    .end local v1           #pos:I
    :cond_3
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 98
    :cond_4
    sget v2, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->POSITION_GOOGLE:I

    if-ne p1, v2, :cond_6

    .line 99
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f02004b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900ba

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 101
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/controller/BrowserSettings;->getDefaultSearchEngine()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 102
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 105
    :cond_6
    sget v2, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->POSITION_BING:I

    if-ne p1, v2, :cond_8

    .line 106
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f02004a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900bb

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 108
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/controller/BrowserSettings;->getDefaultSearchEngine()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 109
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 111
    :cond_7
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 112
    :cond_8
    sget v2, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->POSITION_YANDEX:I

    if-ne p1, v2, :cond_a

    .line 113
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f02004c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900bc

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 115
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/controller/BrowserSettings;->getDefaultSearchEngine()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    .line 116
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 118
    :cond_9
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 120
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "position"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .parameter "constraint"

    .prologue
    .line 69
    sget-object v0, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->mDummyCursor:Lcom/android/browser/model/JSONArraySuggestionCursor;

    return-object v0
.end method
