.class public final Lcom/android/gallery/app/AppHelper;
.super Ljava/lang/Object;
.source "AppHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery/app/AppHelper$ProgressDialogTask;
    }
.end annotation


# static fields
.field public static sSingleTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

.field private static sSortMenuResource:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 154
    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery/app/AppHelper;->sSortMenuResource:[[I

    .line 367
    new-instance v0, Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-direct {v0}, Lcom/android/gallery/util/AsyncLoadTaskStack;-><init>()V

    sput-object v0, Lcom/android/gallery/app/AppHelper;->sSingleTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    .line 368
    sget-object v0, Lcom/android/gallery/app/AppHelper;->sSingleTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-virtual {v0, v4}, Lcom/android/gallery/util/AsyncLoadTaskStack;->setMaxTaskNum(I)V

    .line 369
    sget-object v0, Lcom/android/gallery/app/AppHelper;->sSingleTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-virtual {v0, v4}, Lcom/android/gallery/util/AsyncLoadTaskStack;->setWorkThreadNum(I)V

    .line 370
    sget-object v0, Lcom/android/gallery/app/AppHelper;->sSingleTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/android/gallery/util/AsyncLoadTaskStack;->setThreadPriority(I)V

    .line 371
    return-void

    .line 154
    nop

    :array_0
    .array-data 0x4
        0x6at 0x0t 0xct 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x9t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x6bt 0x0t 0xct 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0x21t 0x0t 0x9t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x6ct 0x0t 0xct 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x9t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x6dt 0x0t 0xct 0x7ft
        0xfet 0xfft 0xfft 0xfft
        0x23t 0x0t 0x9t 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x6et 0x0t 0xct 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x9t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x6ft 0x0t 0xct 0x7ft
        0xfdt 0xfft 0xfft 0xfft
        0x25t 0x0t 0x9t 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x72t 0x0t 0xct 0x7ft
        0x4t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x9t 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x73t 0x0t 0xct 0x7ft
        0xfct 0xfft 0xfft 0xfft
        0x27t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    return-void
.end method

.method public static ShowInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "message"
    .parameter "title"

    .prologue
    .line 37
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 42
    return-void
.end method

.method public static createCropImageIntent(Lcom/android/gallery/data/BaseMeta;Z)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/gallery/data/BaseMeta;->mIsImage:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery/util/Utils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 66
    const-string v1, "noFaceDetection"

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    const-string v1, "com.android.gallery"

    const-class v2, Lcom/android/gallery/ui/CropImage;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 66
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static createVideoIntent(Lcom/android/gallery/data/BaseMeta;)Landroid/content/Intent;
    .locals 3
    .parameter "meta"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/gallery/data/BaseMeta;->isVideo()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 77
    :goto_0
    return-object v1

    .line 74
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery/util/Utils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v1, "android.intent.extra.finishOnCompletion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v1, v0

    .line 77
    goto :goto_0
.end method

.method public static createWallpaperIntent(ZLcom/android/gallery/data/BaseMeta;)Landroid/content/Intent;
    .locals 2
    .parameter "forLockscreen"
    .parameter "meta"

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-boolean v0, p1, Lcom/android/gallery/data/BaseMeta;->mIsImage:Z

    if-nez v0, :cond_0

    move-object v0, v1

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery/util/Utils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/android/gallery/app/AppHelper;->prepareWallpaper(ZLandroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/Runnable;Lcom/android/gallery/data/FileBucket;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "context"
    .parameter "post"
    .parameter "bucket"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Runnable;",
            "Lcom/android/gallery/data/FileBucket;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery/data/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p3, metas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery/data/FileInfo;>;"
    if-nez p2, :cond_0

    .line 286
    :goto_0
    return-void

    .line 262
    :cond_0
    new-instance v4, Lcom/android/gallery/app/AppHelper$2;

    invoke-direct {v4, p3, p2, p0}, Lcom/android/gallery/app/AppHelper$2;-><init>(Ljava/util/ArrayList;Lcom/android/gallery/data/FileBucket;Landroid/content/Context;)V

    .line 279
    .local v4, delete:Ljava/lang/Runnable;
    const/4 v1, 0x0

    const v2, 0x7f090062

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/gallery/app/AppHelper;->startProgressDialogTask(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/Runnable;Lcom/android/gallery/data/FileBucket;Ljava/util/ArrayList;I)V
    .locals 5
    .parameter "context"
    .parameter "post"
    .parameter "bucket"
    .parameter
    .parameter "confirmMessageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Runnable;",
            "Lcom/android/gallery/data/FileBucket;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery/data/FileInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, metas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery/data/FileInfo;>;"
    const/4 v4, 0x0

    const v3, 0x7f090039

    const v2, 0x104000a

    .line 232
    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 256
    :goto_0
    return-void

    .line 241
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/gallery/app/AppHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/gallery/app/AppHelper$1;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/android/gallery/data/FileBucket;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static handleSortOptionsItem(Landroid/view/MenuItem;)I
    .locals 2
    .parameter "item"

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, newSortOrder:I
    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 227
    :goto_0
    :pswitch_0
    return v0

    .line 202
    :pswitch_1
    const/4 v0, 0x2

    .line 203
    goto :goto_0

    .line 205
    :pswitch_2
    const/4 v0, -0x2

    .line 206
    goto :goto_0

    .line 208
    :pswitch_3
    const/4 v0, 0x1

    .line 209
    goto :goto_0

    .line 211
    :pswitch_4
    const/4 v0, -0x1

    .line 212
    goto :goto_0

    .line 214
    :pswitch_5
    const/4 v0, 0x3

    .line 215
    goto :goto_0

    .line 217
    :pswitch_6
    const/4 v0, -0x3

    .line 218
    goto :goto_0

    .line 220
    :pswitch_7
    const/4 v0, 0x4

    .line 221
    goto :goto_0

    .line 223
    :pswitch_8
    const/4 v0, -0x4

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c006a
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static isFileUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 151
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGetContent(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 117
    if-eqz p0, :cond_0

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 139
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInternalMedia(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 133
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPick(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 121
    if-eqz p0, :cond_0

    const-string v0, "android.intent.action.PICK"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSetLockScreen(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 129
    if-eqz p0, :cond_0

    const-string v0, "android.intent.action.SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSetWallpaper(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 125
    if-eqz p0, :cond_0

    const-string v0, "android.intent.action.SET_WALLPAPER"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static prepareSortOptionsMenu(Landroid/content/Context;Landroid/view/Menu;I)V
    .locals 6
    .parameter "context"
    .parameter "menu"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x1

    .line 189
    sget-object v2, Lcom/android/gallery/app/AppHelper;->sSortMenuResource:[[I

    array-length v2, v2

    sub-int v0, v2, v5

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 190
    sget-object v2, Lcom/android/gallery/app/AppHelper;->sSortMenuResource:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 191
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/gallery/app/AppHelper;->sSortMenuResource:[[I

    aget-object v3, v3, v0

    aget v3, v3, v5

    if-ne p2, v3, :cond_1

    const-string v3, "\u25cf"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/gallery/app/AppHelper;->sSortMenuResource:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 189
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 192
    :cond_1
    const-string v3, ""

    goto :goto_1

    .line 196
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_2
    return-void
.end method

.method public static prepareWallpaper(ZLandroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    if-eqz p0, :cond_0

    const-string v1, "save_lockscreen"

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    const-string v1, "com.android.gallery"

    const-class v2, Lcom/android/gallery/ui/CropImage;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    return-object v0

    .line 56
    :cond_0
    const-string v1, "save_wallpaper"

    goto :goto_0
.end method

.method public static send(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery/data/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, metas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery/data/FileInfo;>;"
    const/4 v12, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v13, "android.intent.extra.STREAM"

    .line 81
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 82
    const v8, 0x7f090052

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f090039

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v8, v9}, Lcom/android/gallery/app/AppHelper;->ShowInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v7, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-wide/16 v4, 0x0

    .line 90
    .local v4, totalFileSize:J
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery/data/FileInfo;

    .line 91
    .local v2, meta:Lcom/android/gallery/data/BaseMeta;
    iget-wide v8, v2, Lcom/android/gallery/data/BaseMeta;->mSize:J

    add-long/2addr v4, v8

    .line 92
    iget-object v8, v2, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/gallery/util/Utils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 93
    .local v6, u:Landroid/net/Uri;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    .end local v2           #meta:Lcom/android/gallery/data/BaseMeta;
    .end local v6           #u:Landroid/net/Uri;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v10, :cond_2

    .line 98
    const-string v8, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v8, "image/*"

    invoke-virtual {v1, v12, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v1, v13, v7}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 107
    :goto_2
    const v8, 0x7f09003d

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/gallery/util/Utils;->getFormatedSizeString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, title:Ljava/lang/String;
    :try_start_0
    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v8

    goto :goto_0

    .line 102
    .end local v3           #title:Ljava/lang/String;
    :cond_2
    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery/data/FileInfo;

    iget-object v8, v8, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/gallery/util/StorageUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v12, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Parcelable;

    invoke-virtual {v1, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public static startProgressDialogTask(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4
    .parameter "context"
    .parameter "titleId"
    .parameter "messageId"
    .parameter "preExecute"
    .parameter "background"
    .parameter "postExecute"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 355
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 356
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-nez p1, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 357
    if-nez p2, :cond_1

    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 358
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 359
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 360
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 362
    new-instance v1, Lcom/android/gallery/app/AppHelper$ProgressDialogTask;

    invoke-direct {v1, v0, p3, p4, p5}, Lcom/android/gallery/app/AppHelper$ProgressDialogTask;-><init>(Landroid/app/ProgressDialog;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/gallery/app/AppHelper$ProgressDialogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 363
    return-void

    .line 356
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
