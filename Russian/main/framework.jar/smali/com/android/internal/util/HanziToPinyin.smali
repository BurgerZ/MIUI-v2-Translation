.class public Lcom/android/internal/util/HanziToPinyin;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/HanziToPinyin$Token;
    }
.end annotation


# static fields
.field private static final COLLATOR:Ljava/text/Collator; = null

.field private static final FIRST_PINYIN_UNIHAN:Ljava/lang/String; = "\u5416"

.field private static final FIRST_UNIHAN:C = '\u3400'

.field private static final LAST_PINYIN_UNIHAN:Ljava/lang/String; = "\u5497"

.field private static final PINYINS:[[B = null

.field private static final TAG:Ljava/lang/String; = "HanziToPinyin"

.field private static final UNIHANS:[C

.field private static sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/internal/util/HanziToPinyin;

.field private static sLastNamePolyPhoneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPolyPhoneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sT9Map:[C


# instance fields
.field private final mHasChinaCollator:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 39
    const/16 v0, 0x196

    new-array v0, v0, [C

    fill-array-data v0, :array_2c1a

    sput-object v0, Lcom/android/internal/util/HanziToPinyin;->UNIHANS:[C

    .line 92
    const/16 v0, 0x196

    new-array v0, v0, [[B

    new-array v1, v3, [B

    fill-array-data v1, :array_2db4

    aput-object v1, v0, v4

    new-array v1, v3, [B

    fill-array-data v1, :array_2dbc

    aput-object v1, v0, v5

    new-array v1, v3, [B

    fill-array-data v1, :array_2dc4

    aput-object v1, v0, v6

    new-array v1, v3, [B

    fill-array-data v1, :array_2dcc

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_2dd4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_2ddc

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_2de4

    aput-object v1, v0, v3

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_2dec

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [B

    fill-array-data v2, :array_2df4

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [B

    fill-array-data v2, :array_2dfc

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [B

    fill-array-data v2, :array_2e04

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [B

    fill-array-data v2, :array_2e0c

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [B

    fill-array-data v2, :array_2e14

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [B

    fill-array-data v2, :array_2e1c

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [B

    fill-array-data v2, :array_2e24

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [B

    fill-array-data v2, :array_2e2c

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [B

    fill-array-data v2, :array_2e34

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [B

    fill-array-data v2, :array_2e3c

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [B

    fill-array-data v2, :array_2e44

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [B

    fill-array-data v2, :array_2e4c

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [B

    fill-array-data v2, :array_2e54

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [B

    fill-array-data v2, :array_2e5c

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [B

    fill-array-data v2, :array_2e64

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [B

    fill-array-data v2, :array_2e6c

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [B

    fill-array-data v2, :array_2e74

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [B

    fill-array-data v2, :array_2e7c

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [B

    fill-array-data v2, :array_2e84

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [B

    fill-array-data v2, :array_2e8c

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [B

    fill-array-data v2, :array_2e94

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [B

    fill-array-data v2, :array_2e9c

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [B

    fill-array-data v2, :array_2ea4

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [B

    fill-array-data v2, :array_2eac

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [B

    fill-array-data v2, :array_2eb4

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [B

    fill-array-data v2, :array_2ebc

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [B

    fill-array-data v2, :array_2ec4

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [B

    fill-array-data v2, :array_2ecc

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [B

    fill-array-data v2, :array_2ed4

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [B

    fill-array-data v2, :array_2edc

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [B

    fill-array-data v2, :array_2ee4

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [B

    fill-array-data v2, :array_2eec

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [B

    fill-array-data v2, :array_2ef4

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [B

    fill-array-data v2, :array_2efc

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [B

    fill-array-data v2, :array_2f04

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [B

    fill-array-data v2, :array_2f0c

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [B

    fill-array-data v2, :array_2f14

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [B

    fill-array-data v2, :array_2f1c

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [B

    fill-array-data v2, :array_2f24

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [B

    fill-array-data v2, :array_2f2c

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [B

    fill-array-data v2, :array_2f34

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [B

    fill-array-data v2, :array_2f3c

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [B

    fill-array-data v2, :array_2f44

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [B

    fill-array-data v2, :array_2f4c

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [B

    fill-array-data v2, :array_2f54

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [B

    fill-array-data v2, :array_2f5c

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [B

    fill-array-data v2, :array_2f64

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [B

    fill-array-data v2, :array_2f6c

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [B

    fill-array-data v2, :array_2f74

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [B

    fill-array-data v2, :array_2f7c

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [B

    fill-array-data v2, :array_2f84

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [B

    fill-array-data v2, :array_2f8c

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [B

    fill-array-data v2, :array_2f94

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [B

    fill-array-data v2, :array_2f9c

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [B

    fill-array-data v2, :array_2fa4

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [B

    fill-array-data v2, :array_2fac

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v3, [B

    fill-array-data v2, :array_2fb4

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v3, [B

    fill-array-data v2, :array_2fbc

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v3, [B

    fill-array-data v2, :array_2fc4

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v3, [B

    fill-array-data v2, :array_2fcc

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v3, [B

    fill-array-data v2, :array_2fd4

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v3, [B

    fill-array-data v2, :array_2fdc

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v3, [B

    fill-array-data v2, :array_2fe4

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v3, [B

    fill-array-data v2, :array_2fec

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v3, [B

    fill-array-data v2, :array_2ff4

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v3, [B

    fill-array-data v2, :array_2ffc

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v3, [B

    fill-array-data v2, :array_3004

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v3, [B

    fill-array-data v2, :array_300c

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v3, [B

    fill-array-data v2, :array_3014

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v3, [B

    fill-array-data v2, :array_301c

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v3, [B

    fill-array-data v2, :array_3024

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v3, [B

    fill-array-data v2, :array_302c

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v3, [B

    fill-array-data v2, :array_3034

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v3, [B

    fill-array-data v2, :array_303c

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v3, [B

    fill-array-data v2, :array_3044

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v3, [B

    fill-array-data v2, :array_304c

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v3, [B

    fill-array-data v2, :array_3054

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v3, [B

    fill-array-data v2, :array_305c

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v3, [B

    fill-array-data v2, :array_3064

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v3, [B

    fill-array-data v2, :array_306c

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v3, [B

    fill-array-data v2, :array_3074

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v3, [B

    fill-array-data v2, :array_307c

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v3, [B

    fill-array-data v2, :array_3084

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v3, [B

    fill-array-data v2, :array_308c

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v3, [B

    fill-array-data v2, :array_3094

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v3, [B

    fill-array-data v2, :array_309c

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v3, [B

    fill-array-data v2, :array_30a4

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v3, [B

    fill-array-data v2, :array_30ac

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v3, [B

    fill-array-data v2, :array_30b4

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v3, [B

    fill-array-data v2, :array_30bc

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v3, [B

    fill-array-data v2, :array_30c4

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v3, [B

    fill-array-data v2, :array_30cc

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v3, [B

    fill-array-data v2, :array_30d4

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v3, [B

    fill-array-data v2, :array_30dc

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v3, [B

    fill-array-data v2, :array_30e4

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v3, [B

    fill-array-data v2, :array_30ec

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v3, [B

    fill-array-data v2, :array_30f4

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v3, [B

    fill-array-data v2, :array_30fc

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v3, [B

    fill-array-data v2, :array_3104

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v3, [B

    fill-array-data v2, :array_310c

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v3, [B

    fill-array-data v2, :array_3114

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v3, [B

    fill-array-data v2, :array_311c

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v3, [B

    fill-array-data v2, :array_3124

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v3, [B

    fill-array-data v2, :array_312c

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v3, [B

    fill-array-data v2, :array_3134

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v3, [B

    fill-array-data v2, :array_313c

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v3, [B

    fill-array-data v2, :array_3144

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v3, [B

    fill-array-data v2, :array_314c

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v3, [B

    fill-array-data v2, :array_3154

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v3, [B

    fill-array-data v2, :array_315c

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v3, [B

    fill-array-data v2, :array_3164

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v3, [B

    fill-array-data v2, :array_316c

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v3, [B

    fill-array-data v2, :array_3174

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v3, [B

    fill-array-data v2, :array_317c

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v3, [B

    fill-array-data v2, :array_3184

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v3, [B

    fill-array-data v2, :array_318c

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v3, [B

    fill-array-data v2, :array_3194

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v3, [B

    fill-array-data v2, :array_319c

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v3, [B

    fill-array-data v2, :array_31a4

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v3, [B

    fill-array-data v2, :array_31ac

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v3, [B

    fill-array-data v2, :array_31b4

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v3, [B

    fill-array-data v2, :array_31bc

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v3, [B

    fill-array-data v2, :array_31c4

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v3, [B

    fill-array-data v2, :array_31cc

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v3, [B

    fill-array-data v2, :array_31d4

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v3, [B

    fill-array-data v2, :array_31dc

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v3, [B

    fill-array-data v2, :array_31e4

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v3, [B

    fill-array-data v2, :array_31ec

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v3, [B

    fill-array-data v2, :array_31f4

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v3, [B

    fill-array-data v2, :array_31fc

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v3, [B

    fill-array-data v2, :array_3204

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v3, [B

    fill-array-data v2, :array_320c

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v3, [B

    fill-array-data v2, :array_3214

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v3, [B

    fill-array-data v2, :array_321c

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v3, [B

    fill-array-data v2, :array_3224

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v3, [B

    fill-array-data v2, :array_322c

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v3, [B

    fill-array-data v2, :array_3234

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v3, [B

    fill-array-data v2, :array_323c

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v3, [B

    fill-array-data v2, :array_3244

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v3, [B

    fill-array-data v2, :array_324c

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v3, [B

    fill-array-data v2, :array_3254

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v3, [B

    fill-array-data v2, :array_325c

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v3, [B

    fill-array-data v2, :array_3264

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-array v2, v3, [B

    fill-array-data v2, :array_326c

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v3, [B

    fill-array-data v2, :array_3274

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v3, [B

    fill-array-data v2, :array_327c

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-array v2, v3, [B

    fill-array-data v2, :array_3284

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-array v2, v3, [B

    fill-array-data v2, :array_328c

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-array v2, v3, [B

    fill-array-data v2, :array_3294

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-array v2, v3, [B

    fill-array-data v2, :array_329c

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-array v2, v3, [B

    fill-array-data v2, :array_32a4

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-array v2, v3, [B

    fill-array-data v2, :array_32ac

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-array v2, v3, [B

    fill-array-data v2, :array_32b4

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-array v2, v3, [B

    fill-array-data v2, :array_32bc

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-array v2, v3, [B

    fill-array-data v2, :array_32c4

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-array v2, v3, [B

    fill-array-data v2, :array_32cc

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v3, [B

    fill-array-data v2, :array_32d4

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-array v2, v3, [B

    fill-array-data v2, :array_32dc

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-array v2, v3, [B

    fill-array-data v2, :array_32e4

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-array v2, v3, [B

    fill-array-data v2, :array_32ec

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-array v2, v3, [B

    fill-array-data v2, :array_32f4

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-array v2, v3, [B

    fill-array-data v2, :array_32fc

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-array v2, v3, [B

    fill-array-data v2, :array_3304

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-array v2, v3, [B

    fill-array-data v2, :array_330c

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-array v2, v3, [B

    fill-array-data v2, :array_3314

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-array v2, v3, [B

    fill-array-data v2, :array_331c

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-array v2, v3, [B

    fill-array-data v2, :array_3324

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-array v2, v3, [B

    fill-array-data v2, :array_332c

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-array v2, v3, [B

    fill-array-data v2, :array_3334

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-array v2, v3, [B

    fill-array-data v2, :array_333c

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-array v2, v3, [B

    fill-array-data v2, :array_3344

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-array v2, v3, [B

    fill-array-data v2, :array_334c

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-array v2, v3, [B

    fill-array-data v2, :array_3354

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-array v2, v3, [B

    fill-array-data v2, :array_335c

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-array v2, v3, [B

    fill-array-data v2, :array_3364

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-array v2, v3, [B

    fill-array-data v2, :array_336c

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-array v2, v3, [B

    fill-array-data v2, :array_3374

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-array v2, v3, [B

    fill-array-data v2, :array_337c

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-array v2, v3, [B

    fill-array-data v2, :array_3384

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-array v2, v3, [B

    fill-array-data v2, :array_338c

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-array v2, v3, [B

    fill-array-data v2, :array_3394

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-array v2, v3, [B

    fill-array-data v2, :array_339c

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-array v2, v3, [B

    fill-array-data v2, :array_33a4

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-array v2, v3, [B

    fill-array-data v2, :array_33ac

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-array v2, v3, [B

    fill-array-data v2, :array_33b4

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-array v2, v3, [B

    fill-array-data v2, :array_33bc

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-array v2, v3, [B

    fill-array-data v2, :array_33c4

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-array v2, v3, [B

    fill-array-data v2, :array_33cc

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-array v2, v3, [B

    fill-array-data v2, :array_33d4

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-array v2, v3, [B

    fill-array-data v2, :array_33dc

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-array v2, v3, [B

    fill-array-data v2, :array_33e4

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-array v2, v3, [B

    fill-array-data v2, :array_33ec

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-array v2, v3, [B

    fill-array-data v2, :array_33f4

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-array v2, v3, [B

    fill-array-data v2, :array_33fc

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-array v2, v3, [B

    fill-array-data v2, :array_3404

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-array v2, v3, [B

    fill-array-data v2, :array_340c

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-array v2, v3, [B

    fill-array-data v2, :array_3414

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-array v2, v3, [B

    fill-array-data v2, :array_341c

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-array v2, v3, [B

    fill-array-data v2, :array_3424

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    new-array v2, v3, [B

    fill-array-data v2, :array_342c

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    new-array v2, v3, [B

    fill-array-data v2, :array_3434

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-array v2, v3, [B

    fill-array-data v2, :array_343c

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-array v2, v3, [B

    fill-array-data v2, :array_3444

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-array v2, v3, [B

    fill-array-data v2, :array_344c

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-array v2, v3, [B

    fill-array-data v2, :array_3454

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-array v2, v3, [B

    fill-array-data v2, :array_345c

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-array v2, v3, [B

    fill-array-data v2, :array_3464

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-array v2, v3, [B

    fill-array-data v2, :array_346c

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-array v2, v3, [B

    fill-array-data v2, :array_3474

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    new-array v2, v3, [B

    fill-array-data v2, :array_347c

    aput-object v2, v0, v1

    const/16 v1, 0xda

    new-array v2, v3, [B

    fill-array-data v2, :array_3484

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-array v2, v3, [B

    fill-array-data v2, :array_348c

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-array v2, v3, [B

    fill-array-data v2, :array_3494

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-array v2, v3, [B

    fill-array-data v2, :array_349c

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-array v2, v3, [B

    fill-array-data v2, :array_34a4

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-array v2, v3, [B

    fill-array-data v2, :array_34ac

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-array v2, v3, [B

    fill-array-data v2, :array_34b4

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-array v2, v3, [B

    fill-array-data v2, :array_34bc

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-array v2, v3, [B

    fill-array-data v2, :array_34c4

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    new-array v2, v3, [B

    fill-array-data v2, :array_34cc

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-array v2, v3, [B

    fill-array-data v2, :array_34d4

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    new-array v2, v3, [B

    fill-array-data v2, :array_34dc

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-array v2, v3, [B

    fill-array-data v2, :array_34e4

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    new-array v2, v3, [B

    fill-array-data v2, :array_34ec

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-array v2, v3, [B

    fill-array-data v2, :array_34f4

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    new-array v2, v3, [B

    fill-array-data v2, :array_34fc

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-array v2, v3, [B

    fill-array-data v2, :array_3504

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    new-array v2, v3, [B

    fill-array-data v2, :array_350c

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-array v2, v3, [B

    fill-array-data v2, :array_3514

    aput-object v2, v0, v1

    const/16 v1, 0xed

    new-array v2, v3, [B

    fill-array-data v2, :array_351c

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-array v2, v3, [B

    fill-array-data v2, :array_3524

    aput-object v2, v0, v1

    const/16 v1, 0xef

    new-array v2, v3, [B

    fill-array-data v2, :array_352c

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-array v2, v3, [B

    fill-array-data v2, :array_3534

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    new-array v2, v3, [B

    fill-array-data v2, :array_353c

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-array v2, v3, [B

    fill-array-data v2, :array_3544

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    new-array v2, v3, [B

    fill-array-data v2, :array_354c

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-array v2, v3, [B

    fill-array-data v2, :array_3554

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    new-array v2, v3, [B

    fill-array-data v2, :array_355c

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-array v2, v3, [B

    fill-array-data v2, :array_3564

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    new-array v2, v3, [B

    fill-array-data v2, :array_356c

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-array v2, v3, [B

    fill-array-data v2, :array_3574

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    new-array v2, v3, [B

    fill-array-data v2, :array_357c

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    new-array v2, v3, [B

    fill-array-data v2, :array_3584

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    new-array v2, v3, [B

    fill-array-data v2, :array_358c

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    new-array v2, v3, [B

    fill-array-data v2, :array_3594

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    new-array v2, v3, [B

    fill-array-data v2, :array_359c

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    new-array v2, v3, [B

    fill-array-data v2, :array_35a4

    aput-object v2, v0, v1

    const/16 v1, 0xff

    new-array v2, v3, [B

    fill-array-data v2, :array_35ac

    aput-object v2, v0, v1

    const/16 v1, 0x100

    new-array v2, v3, [B

    fill-array-data v2, :array_35b4

    aput-object v2, v0, v1

    const/16 v1, 0x101

    new-array v2, v3, [B

    fill-array-data v2, :array_35bc

    aput-object v2, v0, v1

    const/16 v1, 0x102

    new-array v2, v3, [B

    fill-array-data v2, :array_35c4

    aput-object v2, v0, v1

    const/16 v1, 0x103

    new-array v2, v3, [B

    fill-array-data v2, :array_35cc

    aput-object v2, v0, v1

    const/16 v1, 0x104

    new-array v2, v3, [B

    fill-array-data v2, :array_35d4

    aput-object v2, v0, v1

    const/16 v1, 0x105

    new-array v2, v3, [B

    fill-array-data v2, :array_35dc

    aput-object v2, v0, v1

    const/16 v1, 0x106

    new-array v2, v3, [B

    fill-array-data v2, :array_35e4

    aput-object v2, v0, v1

    const/16 v1, 0x107

    new-array v2, v3, [B

    fill-array-data v2, :array_35ec

    aput-object v2, v0, v1

    const/16 v1, 0x108

    new-array v2, v3, [B

    fill-array-data v2, :array_35f4

    aput-object v2, v0, v1

    const/16 v1, 0x109

    new-array v2, v3, [B

    fill-array-data v2, :array_35fc

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    new-array v2, v3, [B

    fill-array-data v2, :array_3604

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    new-array v2, v3, [B

    fill-array-data v2, :array_360c

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    new-array v2, v3, [B

    fill-array-data v2, :array_3614

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    new-array v2, v3, [B

    fill-array-data v2, :array_361c

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    new-array v2, v3, [B

    fill-array-data v2, :array_3624

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    new-array v2, v3, [B

    fill-array-data v2, :array_362c

    aput-object v2, v0, v1

    const/16 v1, 0x110

    new-array v2, v3, [B

    fill-array-data v2, :array_3634

    aput-object v2, v0, v1

    const/16 v1, 0x111

    new-array v2, v3, [B

    fill-array-data v2, :array_363c

    aput-object v2, v0, v1

    const/16 v1, 0x112

    new-array v2, v3, [B

    fill-array-data v2, :array_3644

    aput-object v2, v0, v1

    const/16 v1, 0x113

    new-array v2, v3, [B

    fill-array-data v2, :array_364c

    aput-object v2, v0, v1

    const/16 v1, 0x114

    new-array v2, v3, [B

    fill-array-data v2, :array_3654

    aput-object v2, v0, v1

    const/16 v1, 0x115

    new-array v2, v3, [B

    fill-array-data v2, :array_365c

    aput-object v2, v0, v1

    const/16 v1, 0x116

    new-array v2, v3, [B

    fill-array-data v2, :array_3664

    aput-object v2, v0, v1

    const/16 v1, 0x117

    new-array v2, v3, [B

    fill-array-data v2, :array_366c

    aput-object v2, v0, v1

    const/16 v1, 0x118

    new-array v2, v3, [B

    fill-array-data v2, :array_3674

    aput-object v2, v0, v1

    const/16 v1, 0x119

    new-array v2, v3, [B

    fill-array-data v2, :array_367c

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    new-array v2, v3, [B

    fill-array-data v2, :array_3684

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    new-array v2, v3, [B

    fill-array-data v2, :array_368c

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    new-array v2, v3, [B

    fill-array-data v2, :array_3694

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    new-array v2, v3, [B

    fill-array-data v2, :array_369c

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    new-array v2, v3, [B

    fill-array-data v2, :array_36a4

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    new-array v2, v3, [B

    fill-array-data v2, :array_36ac

    aput-object v2, v0, v1

    const/16 v1, 0x120

    new-array v2, v3, [B

    fill-array-data v2, :array_36b4

    aput-object v2, v0, v1

    const/16 v1, 0x121

    new-array v2, v3, [B

    fill-array-data v2, :array_36bc

    aput-object v2, v0, v1

    const/16 v1, 0x122

    new-array v2, v3, [B

    fill-array-data v2, :array_36c4

    aput-object v2, v0, v1

    const/16 v1, 0x123

    new-array v2, v3, [B

    fill-array-data v2, :array_36cc

    aput-object v2, v0, v1

    const/16 v1, 0x124

    new-array v2, v3, [B

    fill-array-data v2, :array_36d4

    aput-object v2, v0, v1

    const/16 v1, 0x125

    new-array v2, v3, [B

    fill-array-data v2, :array_36dc

    aput-object v2, v0, v1

    const/16 v1, 0x126

    new-array v2, v3, [B

    fill-array-data v2, :array_36e4

    aput-object v2, v0, v1

    const/16 v1, 0x127

    new-array v2, v3, [B

    fill-array-data v2, :array_36ec

    aput-object v2, v0, v1

    const/16 v1, 0x128

    new-array v2, v3, [B

    fill-array-data v2, :array_36f4

    aput-object v2, v0, v1

    const/16 v1, 0x129

    new-array v2, v3, [B

    fill-array-data v2, :array_36fc

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    new-array v2, v3, [B

    fill-array-data v2, :array_3704

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    new-array v2, v3, [B

    fill-array-data v2, :array_370c

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    new-array v2, v3, [B

    fill-array-data v2, :array_3714

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    new-array v2, v3, [B

    fill-array-data v2, :array_371c

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    new-array v2, v3, [B

    fill-array-data v2, :array_3724

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    new-array v2, v3, [B

    fill-array-data v2, :array_372c

    aput-object v2, v0, v1

    const/16 v1, 0x130

    new-array v2, v3, [B

    fill-array-data v2, :array_3734

    aput-object v2, v0, v1

    const/16 v1, 0x131

    new-array v2, v3, [B

    fill-array-data v2, :array_373c

    aput-object v2, v0, v1

    const/16 v1, 0x132

    new-array v2, v3, [B

    fill-array-data v2, :array_3744

    aput-object v2, v0, v1

    const/16 v1, 0x133

    new-array v2, v3, [B

    fill-array-data v2, :array_374c

    aput-object v2, v0, v1

    const/16 v1, 0x134

    new-array v2, v3, [B

    fill-array-data v2, :array_3754

    aput-object v2, v0, v1

    const/16 v1, 0x135

    new-array v2, v3, [B

    fill-array-data v2, :array_375c

    aput-object v2, v0, v1

    const/16 v1, 0x136

    new-array v2, v3, [B

    fill-array-data v2, :array_3764

    aput-object v2, v0, v1

    const/16 v1, 0x137

    new-array v2, v3, [B

    fill-array-data v2, :array_376c

    aput-object v2, v0, v1

    const/16 v1, 0x138

    new-array v2, v3, [B

    fill-array-data v2, :array_3774

    aput-object v2, v0, v1

    const/16 v1, 0x139

    new-array v2, v3, [B

    fill-array-data v2, :array_377c

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    new-array v2, v3, [B

    fill-array-data v2, :array_3784

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    new-array v2, v3, [B

    fill-array-data v2, :array_378c

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    new-array v2, v3, [B

    fill-array-data v2, :array_3794

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    new-array v2, v3, [B

    fill-array-data v2, :array_379c

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    new-array v2, v3, [B

    fill-array-data v2, :array_37a4

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    new-array v2, v3, [B

    fill-array-data v2, :array_37ac

    aput-object v2, v0, v1

    const/16 v1, 0x140

    new-array v2, v3, [B

    fill-array-data v2, :array_37b4

    aput-object v2, v0, v1

    const/16 v1, 0x141

    new-array v2, v3, [B

    fill-array-data v2, :array_37bc

    aput-object v2, v0, v1

    const/16 v1, 0x142

    new-array v2, v3, [B

    fill-array-data v2, :array_37c4

    aput-object v2, v0, v1

    const/16 v1, 0x143

    new-array v2, v3, [B

    fill-array-data v2, :array_37cc

    aput-object v2, v0, v1

    const/16 v1, 0x144

    new-array v2, v3, [B

    fill-array-data v2, :array_37d4

    aput-object v2, v0, v1

    const/16 v1, 0x145

    new-array v2, v3, [B

    fill-array-data v2, :array_37dc

    aput-object v2, v0, v1

    const/16 v1, 0x146

    new-array v2, v3, [B

    fill-array-data v2, :array_37e4

    aput-object v2, v0, v1

    const/16 v1, 0x147

    new-array v2, v3, [B

    fill-array-data v2, :array_37ec

    aput-object v2, v0, v1

    const/16 v1, 0x148

    new-array v2, v3, [B

    fill-array-data v2, :array_37f4

    aput-object v2, v0, v1

    const/16 v1, 0x149

    new-array v2, v3, [B

    fill-array-data v2, :array_37fc

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    new-array v2, v3, [B

    fill-array-data v2, :array_3804

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    new-array v2, v3, [B

    fill-array-data v2, :array_380c

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    new-array v2, v3, [B

    fill-array-data v2, :array_3814

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    new-array v2, v3, [B

    fill-array-data v2, :array_381c

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    new-array v2, v3, [B

    fill-array-data v2, :array_3824

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    new-array v2, v3, [B

    fill-array-data v2, :array_382c

    aput-object v2, v0, v1

    const/16 v1, 0x150

    new-array v2, v3, [B

    fill-array-data v2, :array_3834

    aput-object v2, v0, v1

    const/16 v1, 0x151

    new-array v2, v3, [B

    fill-array-data v2, :array_383c

    aput-object v2, v0, v1

    const/16 v1, 0x152

    new-array v2, v3, [B

    fill-array-data v2, :array_3844

    aput-object v2, v0, v1

    const/16 v1, 0x153

    new-array v2, v3, [B

    fill-array-data v2, :array_384c

    aput-object v2, v0, v1

    const/16 v1, 0x154

    new-array v2, v3, [B

    fill-array-data v2, :array_3854

    aput-object v2, v0, v1

    const/16 v1, 0x155

    new-array v2, v3, [B

    fill-array-data v2, :array_385c

    aput-object v2, v0, v1

    const/16 v1, 0x156

    new-array v2, v3, [B

    fill-array-data v2, :array_3864

    aput-object v2, v0, v1

    const/16 v1, 0x157

    new-array v2, v3, [B

    fill-array-data v2, :array_386c

    aput-object v2, v0, v1

    const/16 v1, 0x158

    new-array v2, v3, [B

    fill-array-data v2, :array_3874

    aput-object v2, v0, v1

    const/16 v1, 0x159

    new-array v2, v3, [B

    fill-array-data v2, :array_387c

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    new-array v2, v3, [B

    fill-array-data v2, :array_3884

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    new-array v2, v3, [B

    fill-array-data v2, :array_388c

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    new-array v2, v3, [B

    fill-array-data v2, :array_3894

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    new-array v2, v3, [B

    fill-array-data v2, :array_389c

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    new-array v2, v3, [B

    fill-array-data v2, :array_38a4

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    new-array v2, v3, [B

    fill-array-data v2, :array_38ac

    aput-object v2, v0, v1

    const/16 v1, 0x160

    new-array v2, v3, [B

    fill-array-data v2, :array_38b4

    aput-object v2, v0, v1

    const/16 v1, 0x161

    new-array v2, v3, [B

    fill-array-data v2, :array_38bc

    aput-object v2, v0, v1

    const/16 v1, 0x162

    new-array v2, v3, [B

    fill-array-data v2, :array_38c4

    aput-object v2, v0, v1

    const/16 v1, 0x163

    new-array v2, v3, [B

    fill-array-data v2, :array_38cc

    aput-object v2, v0, v1

    const/16 v1, 0x164

    new-array v2, v3, [B

    fill-array-data v2, :array_38d4

    aput-object v2, v0, v1

    const/16 v1, 0x165

    new-array v2, v3, [B

    fill-array-data v2, :array_38dc

    aput-object v2, v0, v1

    const/16 v1, 0x166

    new-array v2, v3, [B

    fill-array-data v2, :array_38e4

    aput-object v2, v0, v1

    const/16 v1, 0x167

    new-array v2, v3, [B

    fill-array-data v2, :array_38ec

    aput-object v2, v0, v1

    const/16 v1, 0x168

    new-array v2, v3, [B

    fill-array-data v2, :array_38f4

    aput-object v2, v0, v1

    const/16 v1, 0x169

    new-array v2, v3, [B

    fill-array-data v2, :array_38fc

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    new-array v2, v3, [B

    fill-array-data v2, :array_3904

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    new-array v2, v3, [B

    fill-array-data v2, :array_390c

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    new-array v2, v3, [B

    fill-array-data v2, :array_3914

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    new-array v2, v3, [B

    fill-array-data v2, :array_391c

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    new-array v2, v3, [B

    fill-array-data v2, :array_3924

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    new-array v2, v3, [B

    fill-array-data v2, :array_392c

    aput-object v2, v0, v1

    const/16 v1, 0x170

    new-array v2, v3, [B

    fill-array-data v2, :array_3934

    aput-object v2, v0, v1

    const/16 v1, 0x171

    new-array v2, v3, [B

    fill-array-data v2, :array_393c

    aput-object v2, v0, v1

    const/16 v1, 0x172

    new-array v2, v3, [B

    fill-array-data v2, :array_3944

    aput-object v2, v0, v1

    const/16 v1, 0x173

    new-array v2, v3, [B

    fill-array-data v2, :array_394c

    aput-object v2, v0, v1

    const/16 v1, 0x174

    new-array v2, v3, [B

    fill-array-data v2, :array_3954

    aput-object v2, v0, v1

    const/16 v1, 0x175

    new-array v2, v3, [B

    fill-array-data v2, :array_395c

    aput-object v2, v0, v1

    const/16 v1, 0x176

    new-array v2, v3, [B

    fill-array-data v2, :array_3964

    aput-object v2, v0, v1

    const/16 v1, 0x177

    new-array v2, v3, [B

    fill-array-data v2, :array_396c

    aput-object v2, v0, v1

    const/16 v1, 0x178

    new-array v2, v3, [B

    fill-array-data v2, :array_3974

    aput-object v2, v0, v1

    const/16 v1, 0x179

    new-array v2, v3, [B

    fill-array-data v2, :array_397c

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    new-array v2, v3, [B

    fill-array-data v2, :array_3984

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    new-array v2, v3, [B

    fill-array-data v2, :array_398c

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    new-array v2, v3, [B

    fill-array-data v2, :array_3994

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    new-array v2, v3, [B

    fill-array-data v2, :array_399c

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    new-array v2, v3, [B

    fill-array-data v2, :array_39a4

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    new-array v2, v3, [B

    fill-array-data v2, :array_39ac

    aput-object v2, v0, v1

    const/16 v1, 0x180

    new-array v2, v3, [B

    fill-array-data v2, :array_39b4

    aput-object v2, v0, v1

    const/16 v1, 0x181

    new-array v2, v3, [B

    fill-array-data v2, :array_39bc

    aput-object v2, v0, v1

    const/16 v1, 0x182

    new-array v2, v3, [B

    fill-array-data v2, :array_39c4

    aput-object v2, v0, v1

    const/16 v1, 0x183

    new-array v2, v3, [B

    fill-array-data v2, :array_39cc

    aput-object v2, v0, v1

    const/16 v1, 0x184

    new-array v2, v3, [B

    fill-array-data v2, :array_39d4

    aput-object v2, v0, v1

    const/16 v1, 0x185

    new-array v2, v3, [B

    fill-array-data v2, :array_39dc

    aput-object v2, v0, v1

    const/16 v1, 0x186

    new-array v2, v3, [B

    fill-array-data v2, :array_39e4

    aput-object v2, v0, v1

    const/16 v1, 0x187

    new-array v2, v3, [B

    fill-array-data v2, :array_39ec

    aput-object v2, v0, v1

    const/16 v1, 0x188

    new-array v2, v3, [B

    fill-array-data v2, :array_39f4

    aput-object v2, v0, v1

    const/16 v1, 0x189

    new-array v2, v3, [B

    fill-array-data v2, :array_39fc

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    new-array v2, v3, [B

    fill-array-data v2, :array_3a04

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    new-array v2, v3, [B

    fill-array-data v2, :array_3a0c

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    new-array v2, v3, [B

    fill-array-data v2, :array_3a14

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    new-array v2, v3, [B

    fill-array-data v2, :array_3a1c

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    new-array v2, v3, [B

    fill-array-data v2, :array_3a24

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    new-array v2, v3, [B

    fill-array-data v2, :array_3a2c

    aput-object v2, v0, v1

    const/16 v1, 0x190

    new-array v2, v3, [B

    fill-array-data v2, :array_3a34

    aput-object v2, v0, v1

    const/16 v1, 0x191

    new-array v2, v3, [B

    fill-array-data v2, :array_3a3c

    aput-object v2, v0, v1

    const/16 v1, 0x192

    new-array v2, v3, [B

    fill-array-data v2, :array_3a44

    aput-object v2, v0, v1

    const/16 v1, 0x193

    new-array v2, v3, [B

    fill-array-data v2, :array_3a4c

    aput-object v2, v0, v1

    const/16 v1, 0x194

    new-array v2, v3, [B

    fill-array-data v2, :array_3a54

    aput-object v2, v0, v1

    const/16 v1, 0x195

    new-array v2, v3, [B

    fill-array-data v2, :array_3a5c

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/util/HanziToPinyin;->PINYINS:[[B

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 308
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    .line 356
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x963f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "A"

    aput-object v3, v2, v4

    const-string v3, "E"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x814c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YAN"

    aput-object v3, v2, v4

    const-string v3, "A"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x62d7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "AO"

    aput-object v3, v2, v4

    const-string v3, "O"

    aput-object v3, v2, v5

    const-string v3, "NIU"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6252

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PA"

    aput-object v3, v2, v4

    const-string v3, "BA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x868c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BANG"

    aput-object v3, v2, v4

    const-string v3, "BENG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8584

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BAO"

    aput-object v3, v2, v4

    const-string v3, "BO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5821

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "BAO"

    aput-object v3, v2, v4

    const-string v3, "BU"

    aput-object v3, v2, v5

    const-string v3, "PU"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x66b4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BAO"

    aput-object v3, v2, v4

    const-string v3, "PU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d32

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "BEN"

    aput-object v3, v2, v4

    const-string v3, "FEI"

    aput-object v3, v2, v5

    const-string v3, "BI"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FEI"

    aput-object v3, v2, v4

    const-string v3, "BI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x81c2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BI"

    aput-object v3, v2, v4

    const-string v3, "BEI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8f9f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PI"

    aput-object v3, v2, v4

    const-string v3, "BI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8300

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FU"

    aput-object v3, v2, v4

    const-string v3, "BI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6241

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BIAN"

    aput-object v3, v2, v4

    const-string v3, "PIAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4fbf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BIAN"

    aput-object v3, v2, v4

    const-string v3, "PIAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8180

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PANG"

    aput-object v3, v2, v4

    const-string v3, "BANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x78c5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PANG"

    aput-object v3, v2, v4

    const-string v3, "BANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9aa0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BIAO"

    aput-object v3, v2, v4

    const-string v3, "PIAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x756a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "FAN"

    aput-object v3, v2, v4

    const-string v3, "PAN"

    aput-object v3, v2, v5

    const-string v3, "BO"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5b5b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BEI"

    aput-object v3, v2, v4

    const-string v3, "BO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5e9f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FEI"

    aput-object v3, v2, v4

    const-string v3, "BO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5265

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "BO"

    aput-object v3, v2, v4

    const-string v3, "BAO"

    aput-object v3, v2, v5

    const-string v3, "XUE"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6cca

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "BO"

    aput-object v3, v2, v4

    const-string v3, "PO"

    aput-object v3, v2, v5

    const-string v3, "BAN"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f2f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BO"

    aput-object v3, v2, v4

    const-string v3, "BAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x535c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BO"

    aput-object v3, v2, v4

    const-string v3, "BU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f27

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CANG"

    aput-object v3, v2, v4

    const-string v3, "CHEN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x85cf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CANG"

    aput-object v3, v2, v4

    const-string v3, "ZANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53c2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "CAN"

    aput-object v3, v2, v4

    const-string v3, "SHEN"

    aput-object v3, v2, v5

    const-string v3, "CEN"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x66fe

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CENG"

    aput-object v3, v2, v4

    const-string v3, "ZENG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x564c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CENG"

    aput-object v3, v2, v4

    const-string v3, "CHENG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5dee

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHA"

    aput-object v3, v2, v4

    const-string v3, "CHAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x67e5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHA"

    aput-object v3, v2, v4

    const-string v3, "ZHA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7985

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHAN"

    aput-object v3, v2, v4

    const-string v3, "SHAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x98a4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHAN"

    aput-object v3, v2, v4

    const-string v3, "ZHAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5b71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHAN"

    aput-object v3, v2, v4

    const-string v3, "CAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x88f3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHANG"

    aput-object v3, v2, v4

    const-string v3, "CHANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x573a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHANG"

    aput-object v3, v2, v4

    const-string v3, "CHANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6668

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "CHEN"

    aput-object v3, v2, v4

    const-string v3, "CHANG"

    aput-object v3, v2, v5

    const-string v3, "ZE"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x957f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHANG"

    aput-object v3, v2, v4

    const-string v3, "ZHANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5382

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "CHANG"

    aput-object v3, v2, v4

    const-string v3, "AN"

    aput-object v3, v2, v5

    const-string v3, "HAN"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5632

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "CHAO"

    aput-object v3, v2, v4

    const-string v3, "ZHAO"

    aput-object v3, v2, v5

    const-string v3, "ZHA"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8f66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHE"

    aput-object v3, v2, v4

    const-string v3, "JU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x79f0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHENG"

    aput-object v3, v2, v4

    const-string v3, "CHEN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6f84

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHENG"

    aput-object v3, v2, v4

    const-string v3, "DENG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x94db

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DANG"

    aput-object v3, v2, v4

    const-string v3, "CHENG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e58

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHENG"

    aput-object v3, v2, v4

    const-string v3, "SHENG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x671d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHAO"

    aput-object v3, v2, v4

    const-string v3, "ZHAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9561

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "XIN"

    aput-object v3, v2, v4

    const-string v3, "CHAN"

    aput-object v3, v2, v5

    const-string v3, "TAN"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5319

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHI"

    aput-object v3, v2, v4

    const-string v3, "CHI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x90d7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XI"

    aput-object v3, v2, v4

    const-string v3, "CHI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6cbb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHI"

    aput-object v3, v2, v4

    const-string v3, "CHI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7633

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHOU"

    aput-object v3, v2, v4

    const-string v3, "LU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e11

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHOU"

    aput-object v3, v2, v4

    const-string v3, "NIU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x81ed

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHOU"

    aput-object v3, v2, v4

    const-string v3, "XIU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x91cd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHONG"

    aput-object v3, v2, v4

    const-string v3, "CHONG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x79cd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHONG"

    aput-object v3, v2, v4

    const-string v3, "CHONG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x755c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHU"

    aput-object v3, v2, v4

    const-string v3, "XU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9664

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHU"

    aput-object v3, v2, v4

    const-string v3, "XU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHUAN"

    aput-object v3, v2, v4

    const-string v3, "ZHUAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x555c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHUO"

    aput-object v3, v2, v4

    const-string v3, "CHUAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7ef0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHUO"

    aput-object v3, v2, v4

    const-string v3, "CHAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x891a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ZHU"

    aput-object v3, v2, v4

    const-string v3, "CHU"

    aput-object v3, v2, v5

    const-string v3, "ZHE"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x690e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHUI"

    aput-object v3, v2, v4

    const-string v3, "CHUI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6b21

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "CI"

    aput-object v3, v2, v4

    const-string v3, "CHI"

    aput-object v3, v2, v5

    const-string v3, "QI"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f3a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CI"

    aput-object v3, v2, v4

    const-string v3, "SI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5179

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZI"

    aput-object v3, v2, v4

    const-string v3, "CI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x679e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CONG"

    aput-object v3, v2, v4

    const-string v3, "ZONG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6512

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CUAN"

    aput-object v3, v2, v4

    const-string v3, "ZAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5352

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZU"

    aput-object v3, v2, v4

    const-string v3, "CU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8870

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHUAI"

    aput-object v3, v2, v4

    const-string v3, "CUI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x64ae

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CUO"

    aput-object v3, v2, v4

    const-string v3, "ZUO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5927

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DA"

    aput-object v3, v2, v4

    const-string v3, "DAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6c93

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TA"

    aput-object v3, v2, v4

    const-string v3, "DA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5355

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "DAN"

    aput-object v3, v2, v4

    const-string v3, "CHAN"

    aput-object v3, v2, v5

    const-string v3, "SHAN"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53e8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DAO"

    aput-object v3, v2, v4

    const-string v3, "TAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x63d0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TI"

    aput-object v3, v2, v4

    const-string v3, "DI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9046

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DI"

    aput-object v3, v2, v4

    const-string v3, "TI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7fdf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DI"

    aput-object v3, v2, v4

    const-string v3, "ZHAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5f97

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DE"

    aput-object v3, v2, v4

    const-string v3, "DEI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x94bf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DIAN"

    aput-object v3, v2, v4

    const-string v3, "TIAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f43

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DIAN"

    aput-object v3, v2, v4

    const-string v3, "TIAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5200

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DAO"

    aput-object v3, v2, v4

    const-string v3, "DIAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8c03

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DIAO"

    aput-object v3, v2, v4

    const-string v3, "TIAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x90fd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DOU"

    aput-object v3, v2, v4

    const-string v3, "DU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5ea6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DU"

    aput-object v3, v2, v4

    const-string v3, "DUO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x56e4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TUN"

    aput-object v3, v2, v4

    const-string v3, "DUN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5426

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FOU"

    aput-object v3, v2, v4

    const-string v3, "PI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x812f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PU"

    aput-object v3, v2, v4

    const-string v3, "FU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8f67

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "YA"

    aput-object v3, v2, v4

    const-string v3, "ZHA"

    aput-object v3, v2, v5

    const-string v3, "GA"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x625b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KANG"

    aput-object v3, v2, v4

    const-string v3, "GANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x76d6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GAI"

    aput-object v3, v2, v4

    const-string v3, "GE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x54af

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "GE"

    aput-object v3, v2, v4

    const-string v3, "KA"

    aput-object v3, v2, v5

    const-string v3, "LO"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9769

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GE"

    aput-object v3, v2, v4

    const-string v3, "JI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5408

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HE"

    aput-object v3, v2, v4

    const-string v3, "GE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7ed9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GEI"

    aput-object v3, v2, v4

    const-string v3, "JI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9888

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JING"

    aput-object v3, v2, v4

    const-string v3, "GENG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7ea2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HONG"

    aput-object v3, v2, v4

    const-string v3, "GONG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x67b8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GOU"

    aput-object v3, v2, v4

    const-string v3, "JU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5471

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GUA"

    aput-object v3, v2, v4

    const-string v3, "GU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8c37

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GU"

    aput-object v3, v2, v4

    const-string v3, "YU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x866b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHONG"

    aput-object v3, v2, v4

    const-string v3, "GU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9e44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HU"

    aput-object v3, v2, v4

    const-string v3, "GU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x62ec

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KUO"

    aput-object v3, v2, v4

    const-string v3, "GUA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x839e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GUAN"

    aput-object v3, v2, v4

    const-string v3, "WAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7eb6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LUN"

    aput-object v3, v2, v4

    const-string v3, "GUAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7085

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIONG"

    aput-object v3, v2, v4

    const-string v3, "GUI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6867

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GUI"

    aput-object v3, v2, v4

    const-string v3, "HUI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7094

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QUE"

    aput-object v3, v2, v4

    const-string v3, "GUI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x660b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GUI"

    aput-object v3, v2, v4

    const-string v3, "JIONG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f1a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "HUI"

    aput-object v3, v2, v4

    const-string v3, "KUAI"

    aput-object v3, v2, v5

    const-string v3, "GUI"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x82a5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIE"

    aput-object v3, v2, v4

    const-string v3, "GAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x867e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XIA"

    aput-object v3, v2, v4

    const-string v3, "HA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8f69

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XUAN"

    aput-object v3, v2, v4

    const-string v3, "HAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6496

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KAN"

    aput-object v3, v2, v4

    const-string v3, "HAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x54b3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KE"

    aput-object v3, v2, v4

    const-string v3, "HAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5df7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XIANG"

    aput-object v3, v2, v4

    const-string v3, "HANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x542d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KENG"

    aput-object v3, v2, v4

    const-string v3, "HANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9ed8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "MO"

    aput-object v3, v2, v4

    const-string v3, "HE"

    aput-object v3, v2, v5

    const-string v3, "MEI"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x548c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "HE"

    aput-object v3, v2, v4

    const-string v3, "HU"

    aput-object v3, v2, v5

    const-string v3, "HUO"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8c89

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HE"

    aput-object v3, v2, v4

    const-string v3, "HAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9ed1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HEI"

    aput-object v3, v2, v4

    const-string v3, "HE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8679

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HONG"

    aput-object v3, v2, v4

    const-string v3, "JIANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x90c7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XUN"

    aput-object v3, v2, v4

    const-string v3, "HUAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5bf0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HUAN"

    aput-object v3, v2, v4

    const-string v3, "XIAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5947

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QI"

    aput-object v3, v2, v4

    const-string v3, "JI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7f09

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JI"

    aput-object v3, v2, v4

    const-string v3, "QI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5048

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIE"

    aput-object v3, v2, v4

    const-string v3, "JI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7cfb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XI"

    aput-object v3, v2, v4

    const-string v3, "JI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7a3d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JI"

    aput-object v3, v2, v4

    const-string v3, "QI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e9f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JI"

    aput-object v3, v2, v4

    const-string v3, "QI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8bd8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIE"

    aput-object v3, v2, v4

    const-string v3, "JI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8bb0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JI"

    aput-object v3, v2, v4

    const-string v3, "JIE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5267

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JU"

    aput-object v3, v2, v4

    const-string v3, "JI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x796d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "JI"

    aput-object v3, v2, v4

    const-string v3, "ZHA"

    aput-object v3, v2, v5

    const-string v3, "ZHAI"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8304

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QIE"

    aput-object v3, v2, v4

    const-string v3, "JIA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x56bc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIAO"

    aput-object v3, v2, v4

    const-string v3, "JUE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4fa5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIAO"

    aput-object v3, v2, v4

    const-string v3, "YAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x89d2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIAO"

    aput-object v3, v2, v4

    const-string v3, "JUE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x811a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIAO"

    aput-object v3, v2, v4

    const-string v3, "JUE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x527f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIAO"

    aput-object v3, v2, v4

    const-string v3, "CHAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6821

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XIAO"

    aput-object v3, v2, v4

    const-string v3, "JIAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7f34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIAO"

    aput-object v3, v2, v4

    const-string v3, "ZHUO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x89c1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIAN"

    aput-object v3, v2, v4

    const-string v3, "XIAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x964d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "XIANG"

    aput-object v3, v2, v4

    const-string v3, "LONG"

    aput-object v3, v2, v5

    const-string v3, "JIANG"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x89e3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIE"

    aput-object v3, v2, v4

    const-string v3, "XIE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x85c9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIE"

    aput-object v3, v2, v4

    const-string v3, "JI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x77dc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIN"

    aput-object v3, v2, v4

    const-string v3, "QIN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x52b2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIN"

    aput-object v3, v2, v4

    const-string v3, "JING"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9f9f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "GUI"

    aput-object v3, v2, v4

    const-string v3, "QIU"

    aput-object v3, v2, v5

    const-string v3, "CI"

    aput-object v3, v2, v6

    const-string v3, "JUN"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5480

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JU"

    aput-object v3, v2, v4

    const-string v3, "ZUI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x741a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JU"

    aput-object v3, v2, v4

    const-string v3, "QU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x83cc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JUN"

    aput-object v3, v2, v4

    const-string v3, "XUN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x96bd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JUN"

    aput-object v3, v2, v4

    const-string v3, "JUAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5361

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KA"

    aput-object v3, v2, v4

    const-string v3, "QIA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x770b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KAN"

    aput-object v3, v2, v4

    const-string v3, "KAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x61a8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HAN"

    aput-object v3, v2, v4

    const-string v3, "KAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5777

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KE"

    aput-object v3, v2, v4

    const-string v3, "KE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x58f3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KE"

    aput-object v3, v2, v4

    const-string v3, "QIA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x514b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KE"

    aput-object v3, v2, v4

    const-string v3, "KEI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9760

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KAO"

    aput-object v3, v2, v4

    const-string v3, "KU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9697

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "WEI"

    aput-object v3, v2, v4

    const-string v3, "KUI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9b3c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "GUI"

    aput-object v3, v2, v4

    const-string v3, "WEI"

    aput-object v3, v2, v5

    const-string v3, "KUI"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8312

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "KUANG"

    aput-object v3, v2, v4

    const-string v3, "GUAN"

    aput-object v3, v2, v5

    const-string v3, "YUAN"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5587

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LA"

    aput-object v3, v2, v4

    const-string v3, "YAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x84dd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LAN"

    aput-object v3, v2, v4

    const-string v3, "PIE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x70d9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "LAO"

    aput-object v3, v2, v4

    const-string v3, "LUO"

    aput-object v3, v2, v5

    const-string v3, "PAO"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x96d2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LUO"

    aput-object v3, v2, v4

    const-string v3, "LAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x808b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LE"

    aput-object v3, v2, v4

    const-string v3, "LEI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e50

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LE"

    aput-object v3, v2, v4

    const-string v3, "YUE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e86

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LE"

    aput-object v3, v2, v4

    const-string v3, "LIAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4fe9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LIANG"

    aput-object v3, v2, v4

    const-string v3, "LIA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6f66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LIAO"

    aput-object v3, v2, v4

    const-string v3, "LAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x788c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "LU"

    aput-object v3, v2, v4

    const-string v3, "ZHOU"

    aput-object v3, v2, v5

    const-string v3, "LIU"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x507b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LOU"

    aput-object v3, v2, v4

    const-string v3, "LU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9732

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LU"

    aput-object v3, v2, v4

    const-string v3, "LOU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x634b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LU"

    aput-object v3, v2, v4

    const-string v3, "LUO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7eff

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LV"

    aput-object v3, v2, v4

    const-string v3, "LU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x516d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LIU"

    aput-object v3, v2, v4

    const-string v3, "LU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7edc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LUO"

    aput-object v3, v2, v4

    const-string v3, "LAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x843d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "LUO"

    aput-object v3, v2, v4

    const-string v3, "LAO"

    aput-object v3, v2, v5

    const-string v3, "LA"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x62b9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MA"

    aput-object v3, v2, v4

    const-string v3, "MO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8109

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MAI"

    aput-object v3, v2, v4

    const-string v3, "MO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x57cb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MAI"

    aput-object v3, v2, v4

    const-string v3, "MAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8513

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MAN"

    aput-object v3, v2, v4

    const-string v3, "WAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6c13

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MANG"

    aput-object v3, v2, v4

    const-string v3, "MENG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6ca1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MEI"

    aput-object v3, v2, v4

    const-string v3, "MO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x79d8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MI"

    aput-object v3, v2, v4

    const-string v3, "BI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6ccc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MI"

    aput-object v3, v2, v4

    const-string v3, "BI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f74

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "MI"

    aput-object v3, v2, v4

    const-string v3, "NAI"

    aput-object v3, v2, v5

    const-string v3, "NI"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8c2c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MIAO"

    aput-object v3, v2, v4

    const-string v3, "MIU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6a21

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MO"

    aput-object v3, v2, v4

    const-string v3, "MU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6469

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "MO"

    aput-object v3, v2, v4

    const-string v3, "MA"

    aput-object v3, v2, v5

    const-string v3, "SA"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6bcd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MU"

    aput-object v3, v2, v4

    const-string v3, "WU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7f2a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "MIU"

    aput-object v3, v2, v4

    const-string v3, "MIAO"

    aput-object v3, v2, v5

    const-string v3, "MOU"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5f04

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NONG"

    aput-object v3, v2, v4

    const-string v3, "LONG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x96be

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NAN"

    aput-object v3, v2, v4

    const-string v3, "NING"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x759f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NUE"

    aput-object v3, v2, v4

    const-string v3, "YAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e5c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MIE"

    aput-object v3, v2, v4

    const-string v3, "NIE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5a1c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NA"

    aput-object v3, v2, v4

    const-string v3, "NUO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x533a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QU"

    aput-object v3, v2, v4

    const-string v3, "OU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7e41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FAN"

    aput-object v3, v2, v4

    const-string v3, "PO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8feb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PO"

    aput-object v3, v2, v4

    const-string v3, "PAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x80d6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PANG"

    aput-object v3, v2, v4

    const-string v3, "PAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5228

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PAO"

    aput-object v3, v2, v4

    const-string v3, "BAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x70ae

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PAO"

    aput-object v3, v2, v4

    const-string v3, "BAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9022

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FENG"

    aput-object v3, v2, v4

    const-string v3, "PANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x84ec

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PENG"

    aput-object v3, v2, v4

    const-string v3, "PANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6734

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "PU"

    aput-object v3, v2, v4

    const-string v3, "PO"

    aput-object v3, v2, v5

    const-string v3, "PIAO"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7011

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PU"

    aput-object v3, v2, v4

    const-string v3, "BAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x66dd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BAO"

    aput-object v3, v2, v4

    const-string v3, "PU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6816

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XI"

    aput-object v3, v2, v4

    const-string v3, "QI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8e4a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XI"

    aput-object v3, v2, v4

    const-string v3, "QI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7a3d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JI"

    aput-object v3, v2, v4

    const-string v3, "QI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8368

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XUN"

    aput-object v3, v2, v4

    const-string v3, "QIAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x79a4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QIAN"

    aput-object v3, v2, v4

    const-string v3, "XUAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5f3a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QIANG"

    aput-object v3, v2, v4

    const-string v3, "JIANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d84

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QIE"

    aput-object v3, v2, v4

    const-string v3, "JU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4eb2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QIN"

    aput-object v3, v2, v4

    const-string v3, "QING"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x96c0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QUE"

    aput-object v3, v2, v4

    const-string v3, "QIAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4ec7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHOU"

    aput-object v3, v2, v4

    const-string v3, "QIU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5708

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QUAN"

    aput-object v3, v2, v4

    const-string v3, "JUAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8272

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SE"

    aput-object v3, v2, v4

    const-string v3, "SHAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x585e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SAI"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53a6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XIA"

    aput-object v3, v2, v4

    const-string v3, "SHA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53ec

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHAO"

    aput-object v3, v2, v4

    const-string v3, "SHAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6749

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHAN"

    aput-object v3, v2, v4

    const-string v3, "SHA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6c64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TANG"

    aput-object v3, v2, v4

    const-string v3, "SHANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x62fe

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHI"

    aput-object v3, v2, v4

    const-string v3, "SHE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6298

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHE"

    aput-object v3, v2, v4

    const-string v3, "SHE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4ec0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHEN"

    aput-object v3, v2, v4

    const-string v3, "SHI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x845a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHEN"

    aput-object v3, v2, v4

    const-string v3, "REN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8bc6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHI"

    aput-object v3, v2, v4

    const-string v3, "ZHI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f3c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SI"

    aput-object v3, v2, v4

    const-string v3, "SHI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5c5e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHU"

    aput-object v3, v2, v4

    const-string v3, "ZHU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x719f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHU"

    aput-object v3, v2, v4

    const-string v3, "SHOU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8bf4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHUO"

    aput-object v3, v2, v4

    const-string v3, "SHUI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6570

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHU"

    aput-object v3, v2, v4

    const-string v3, "SHUO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5fea

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SONG"

    aput-object v3, v2, v4

    const-string v3, "ZHONG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5bbf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SU"

    aput-object v3, v2, v4

    const-string v3, "XIU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x772d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "GUI"

    aput-object v3, v2, v4

    const-string v3, "XU"

    aput-object v3, v2, v5

    const-string v3, "SUI"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6fb9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DAN"

    aput-object v3, v2, v4

    const-string v3, "TAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6c93

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TA"

    aput-object v3, v2, v4

    const-string v3, "DA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8983

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TAN"

    aput-object v3, v2, v4

    const-string v3, "QIN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8c03

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DIAO"

    aput-object v3, v2, v4

    const-string v3, "TIAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x892a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TUI"

    aput-object v3, v2, v4

    const-string v3, "TUN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x62d3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TUO"

    aput-object v3, v2, v4

    const-string v3, "TA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5729

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "WEI"

    aput-object v3, v2, v4

    const-string v3, "XU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x59d4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "WEI"

    aput-object v3, v2, v4

    const-string v3, "QU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5c3e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "WEI"

    aput-object v3, v2, v4

    const-string v3, "YI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5c09

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "WEI"

    aput-object v3, v2, v4

    const-string v3, "YU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9057

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YI"

    aput-object v3, v2, v4

    const-string v3, "WEI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "WU"

    aput-object v3, v2, v4

    const-string v3, "LA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5413

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XIA"

    aput-object v3, v2, v4

    const-string v3, "HE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7ea4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XIAN"

    aput-object v3, v2, v4

    const-string v3, "QIAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x884c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "XING"

    aput-object v3, v2, v4

    const-string v3, "HANG"

    aput-object v3, v2, v5

    const-string v3, "HENG"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7701

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHENG"

    aput-object v3, v2, v4

    const-string v3, "XING"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x524a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XIAO"

    aput-object v3, v2, v4

    const-string v3, "XUE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8840

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XUE"

    aput-object v3, v2, v4

    const-string v3, "XIE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6bb7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YIN"

    aput-object v3, v2, v4

    const-string v3, "YAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x54bd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YAN"

    aput-object v3, v2, v4

    const-string v3, "YE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7ea6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YUE"

    aput-object v3, v2, v4

    const-string v3, "YAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x94a5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YAO"

    aput-object v3, v2, v4

    const-string v3, "YUE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53f6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YE"

    aput-object v3, v2, v4

    const-string v3, "XIE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x827e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AI"

    aput-object v3, v2, v4

    const-string v3, "YI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x71a8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YUN"

    aput-object v3, v2, v4

    const-string v3, "YU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5401

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YU"

    aput-object v3, v2, v4

    const-string v3, "XU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5458

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YUAN"

    aput-object v3, v2, v4

    const-string v3, "YUN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YUAN"

    aput-object v3, v2, v4

    const-string v3, "YUN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x548b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ZA"

    aput-object v3, v2, v4

    const-string v3, "ZE"

    aput-object v3, v2, v5

    const-string v3, "ZHA"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x62e9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZE"

    aput-object v3, v2, v4

    const-string v3, "ZHAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x624e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHA"

    aput-object v3, v2, v4

    const-string v3, "ZA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8f67

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YA"

    aput-object v3, v2, v4

    const-string v3, "ZHA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7c98

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NIAN"

    aput-object v3, v2, v4

    const-string v3, "ZHAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x722a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHUA"

    aput-object v3, v2, v4

    const-string v3, "ZHAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7740

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHAO"

    aput-object v3, v2, v4

    const-string v3, "ZHUO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6b96

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHI"

    aput-object v3, v2, v4

    const-string v3, "SHI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8457

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ZHU"

    aput-object v3, v2, v4

    const-string v3, "ZHE"

    aput-object v3, v2, v5

    const-string v3, "ZHUO"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5e62

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHUANG"

    aput-object v3, v2, v4

    const-string v3, "CHUANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7efc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZONG"

    aput-object v3, v2, v4

    const-string v3, "ZENG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x67de

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZUO"

    aput-object v3, v2, v4

    const-string v3, "ZHA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4ed4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZI"

    aput-object v3, v2, v4

    const-string v3, "ZAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5185

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "NEI"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x77bf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "QU"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6765

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LAI"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53c9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "CHA"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5979

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "TA"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5355\u4e8e"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHAN"

    aput-object v3, v2, v4

    const-string v3, "YU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u957f\u5b59"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHANG"

    aput-object v3, v2, v4

    const-string v3, "SUN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5b50\u8f66"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZI"

    aput-object v3, v2, v4

    const-string v3, "JU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u4e07\u4fdf"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MO"

    aput-object v3, v2, v4

    const-string v3, "QI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u6fb9\u53f0"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TAN"

    aput-object v3, v2, v4

    const-string v3, "TAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5c09\u8fdf"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YU"

    aput-object v3, v2, v4

    const-string v3, "CHI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x535c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8584

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5b5b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d32

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BEN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6cca

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8300

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5e9f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x756a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x891a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x91cd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHONG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5382

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "HAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53c2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x79cd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHONG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x90d7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9561

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x671d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6cbb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x555c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHUAI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8870

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6668

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e11

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHOU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7633

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHOU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x957f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6b21

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "QI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8f66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7fdf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f43

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5200

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8c03

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9046

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x76d6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "GE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7085

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "GUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x866b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "GU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7094

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "GUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x660b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "GUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f1a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "GUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x82a5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "GAI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8312

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "KUANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x90c7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "HUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5df7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XIANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9ed1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "HE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8f69

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "HAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6496

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "HAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9ed8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "HE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x89c1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x964d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JIANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x89d2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7f34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8bb0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x741a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5267

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x96bd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9697

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "KUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9b3c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "KUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x61a8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "KAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9760

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "KU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e50

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "YUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x516d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "LU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5587

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "LA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x96d2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "LUO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e86

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "LIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7f2a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "MIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f74

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "MI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8c2c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "MIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e5c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "NIE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x96be

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "NING"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x533a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "OU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9022

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "PANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x84ec

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "PENG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6734

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "PIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7e41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "PO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4fbf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "PIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4ec7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "QIU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5361

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "QIA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8983

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "TAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x79a4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "QIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53ec

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4ec0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6298

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x772d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x89e3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XIE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7cfb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5df7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XIANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9664

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5bf0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5458

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "YUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "YUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x66fe

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "ZENG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x67e5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "ZHA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53ec

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x796d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "ZHAI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_3a64

    sput-object v0, Lcom/android/internal/util/HanziToPinyin;->sT9Map:[C

    return-void

    .line 39
    :array_2c1a
    .array-data 0x2
        0x16t 0x54t
        0xcet 0x54t
        0x89t 0x5bt
        0xaet 0x80t
        0xf9t 0x51t
        0x6bt 0x51t
        0xb0t 0x63t
        0x73t 0x62t
        0xa6t 0x90t
        0xf9t 0x52t
        0x42t 0x96t
        0x54t 0x59t
        0x3bt 0x4ft
        0x80t 0x76t
        0x2dt 0x78t
        0x6ct 0x70t
        0x8bt 0x61t
        0x43t 0x6ct
        0xabt 0x51t
        0x76t 0x76t
        0xect 0x5ct
        0x93t 0x56t
        0x72t 0x50t
        0xc2t 0x53t
        0xd3t 0x4et
        0xa1t 0x64t
        0x8at 0x51t
        0x7et 0x5dt
        0x4ct 0x56t
        0x60t 0x62t
        0xc6t 0x62t
        0xbft 0x8ft
        0x25t 0x4ft
        0x84t 0x62t
        0x66t 0x8ft
        0xbbt 0x62t
        0x37t 0x96t
        0x3t 0x54t
        0x45t 0x51t
        0xbdt 0x62t
        0xfat 0x51t
        0xbt 0x64t
        0xdbt 0x5dt
        0x5t 0x52t
        0x39t 0x54t
        0xfet 0x65t
        0x14t 0x8et
        0x72t 0x54t
        0xcet 0x4et
        0xd1t 0x51t
        0x97t 0x7ct
        0x46t 0x6ct
        0x14t 0x5dt
        0xa8t 0x90t
        0x13t 0x64t
        0x91t 0x54t
        0x46t 0x54t
        0x39t 0x4et
        0x53t 0x5ft
        0x0t 0x52t
        0x74t 0x60t
        0x65t 0x62t
        0x6ft 0x70t
        0xfet 0x4et
        0xf2t 0x55t
        0x41t 0x65t
        0x1t 0x52t
        0x39t 0x72t
        0x1t 0x4et
        0x1ft 0x4et
        0x1ct 0x4et
        0x3at 0x54t
        0x62t 0x52t
        0x11t 0x80t
        0x96t 0x57t
        0x28t 0x54t
        0x1at 0x59t
        0xb8t 0x59t
        0x40t 0x59t
        0xa5t 0x97t
        0xct 0x80t
        0xd1t 0x53t
        0x6t 0x5et
        0x1at 0x53t
        0xdet 0x98t
        0x6t 0x52t
        0x30t 0x4et
        0x85t 0x89t
        0xcft 0x4et
        0xbat 0x57t
        0x11t 0x7dt
        0x2bt 0x59t
        0x24t 0x73t
        0xeet 0x65t
        0x85t 0x4ft
        0x72t 0x5et
        0x88t 0x51t
        0x8bt 0x76t
        0x8t 0x62t
        0xd9t 0x7et
        0x39t 0x68t
        0xeft 0x63t
        0xbct 0x55t
        0xf0t 0x55t
        0xe5t 0x5dt
        0xfet 0x52t
        0x30t 0x4ft
        0x39t 0x9et
        0x56t 0x4et
        0x73t 0x51t
        0x49t 0x51t
        0x52t 0x5ft
        0x28t 0x4et
        0x34t 0x8bt
        0x59t 0x54t
        0x8et 0x59t
        0x8dt 0x54t
        0x44t 0x4ft
        0x2ft 0x59t
        0x20t 0x83t
        0xc3t 0x8bt
        0xd2t 0x9et
        0xebt 0x62t
        0xa8t 0x4et
        0xfft 0x53t
        0x41t 0x9ft
        0x4et 0x4et
        0xb1t 0x82t
        0x0t 0x60t
        0x22t 0x6bt
        0xdft 0x5dt
        0x70t 0x70t
        0xft 0x66t
        0x19t 0x54t
        0xct 0x4et
        0xa0t 0x52t
        0xbt 0x62t
        0x5ft 0x6ct
        0x7dt 0x82t
        0x36t 0x96t
        0xfet 0x5dt
        0x55t 0x57t
        0x82t 0x51t
        0x29t 0x4et
        0xe5t 0x51t
        0xe2t 0x59t
        0x58t 0x56t
        0x9bt 0x51t
        0x94t 0x54t
        0x0t 0x5ft
        0x8et 0x93t
        0xfct 0x5ft
        0x3bt 0x5ct
        0x3ct 0x53t
        0x8et 0x80t
        0xa5t 0x52t
        0x7at 0x7at
        0xa0t 0x62t
        0x5dt 0x62t
        0x38t 0x59t
        0xaft 0x84t
        0xbdt 0x5bt
        0x21t 0x53t
        0x8ft 0x4et
        0x64t 0x57t
        0x69t 0x62t
        0xc9t 0x62t
        0x86t 0x4ft
        0x70t 0x51t
        0x77t 0x55t
        0x5et 0x63t
        0xc2t 0x4et
        0xf7t 0x96t
        0x37t 0x81t
        0xf1t 0x68t
        0x5et 0x69t
        0xet 0x55t
        0xe9t 0x4ft
        0xfet 0x5at
        0x6ft 0x82t
        0x7dt 0x8et
        0xd3t 0x57t
        0xb8t 0x53t
        0xcet 0x62t
        0x9ct 0x6et
        0x99t 0x9ft
        0x4t 0x5at
        0x5ct 0x56t
        0x6at 0x5bt
        0xa1t 0x62t
        0x31t 0x98t
        0x88t 0x59t
        0xcbt 0x57t
        0x9ft 0x98t
        0x64t 0x72t
        0x2bt 0x73t
        0x45t 0x54t
        0xe8t 0x95t
        0x13t 0x6ct
        0xaat 0x54t
        0x80t 0x5bt
        0xb5t 0x55t
        0x5ct 0x4et
        0x11t 0x6ct
        0xdt 0x54t
        0x2ct 0x8ct
        0x78t 0x64t
        0x5ft 0x72t
        0xcdt 0x6bt
        0xcft 0x62t
        0x49t 0x81t
        0xe1t 0x56t
        0xd4t 0x56t
        0x6ct 0x5bt
        0xb7t 0x8bt
        0x1et 0x5at
        0xe9t 0x5at
        0xfdt 0x80t
        0xb0t 0x92t
        0xc8t 0x62t
        0x18t 0x5at
        0x1ft 0x9et
        0x4ft 0x63t
        0xdct 0x56t
        0x81t 0x5bt
        0x9et 0x59t
        0x9ct 0x51t
        0xbat 0x7ft
        0x74t 0x59t
        0x7bt 0x59t
        0xc1t 0x9et
        0xcdt 0x90t
        0x62t 0x56t
        0xb4t 0x8bt
        0x91t 0x59t
        0xcdt 0x62t
        0x5t 0x77t
        0x78t 0x6ct
        0x9bt 0x62t
        0x78t 0x54t
        0xb7t 0x55t
        0x9t 0x53t
        0x76t 0x4et
        0x47t 0x72t
        0x7dt 0x52t
        0x15t 0x6ct
        0xd8t 0x59t
        0x52t 0x4et
        0x8bt 0x94t
        0x56t 0x52t
        0xc6t 0x4et
        0x3t 0x4et
        0x90t 0x63t
        0x43t 0x53t
        0x5bt 0x54t
        0x84t 0x60t
        0x7t 0x52t
        0xb2t 0x4et
        0x51t 0x97t
        0x86t 0x5bt
        0xd7t 0x74t
        0x3at 0x53t
        0xd1t 0x5ct
        0x94t 0x70t
        0xbt 0x59t
        0x65t 0x54t
        0x63t 0x7at
        0x5bt 0x83t
        0xf9t 0x60t
        0xbat 0x4et
        0x54t 0x62t
        0xe5t 0x65t
        0xet 0x62t
        0xb9t 0x53t
        0x9at 0x90t
        0x27t 0x58t
        0x75t 0x68t
        0xf0t 0x95t
        0x3ct 0x63t
        0xe8t 0x4et
        0xe2t 0x6bt
        0x9t 0x4et
        0x52t 0x68t
        0xbbt 0x63t
        0x72t 0x82t
        0xeet 0x68t
        0xe7t 0x50t
        0x40t 0x67t
        0x5bt 0x7bt
        0x71t 0x5ct
        0x24t 0x4ft
        0x30t 0x5ft
        0x62t 0x59t
        0x33t 0x75t
        0x47t 0x53t
        0x38t 0x5ct
        0xcet 0x53t
        0x66t 0x4et
        0x37t 0x52t
        0x70t 0x88t
        0xe9t 0x95t
        0xcct 0x53t
        0x1t 0x8ct
        0x2et 0x54t
        0xf4t 0x8bt
        0xb6t 0x53t
        0xeat 0x5ft
        0xc1t 0x51t
        0xcft 0x82t
        0xfbt 0x72t
        0xat 0x59t
        0x59t 0x5bt
        0x6t 0x55t
        0xd6t 0x4et
        0x61t 0x5bt
        0x4dt 0x57t
        0x64t 0x6ct
        0x32t 0x59t
        0xd1t 0x5ft
        0xaft 0x81t
        0x54t 0x52t
        0x29t 0x59t
        0xebt 0x65t
        0x17t 0x60t
        0x85t 0x53t
        0xb5t 0x70t
        0x77t 0x50t
        0xf8t 0x51t
        0x4dt 0x6et
        0xa8t 0x63t
        0x1et 0x54t
        0xact 0x8bt
        0xb8t 0x52t
        0x6at 0x6bt
        0x2ft 0x5ft
        0x23t 0x5ct
        0x71t 0x53t
        0x37t 0x66t
        0xc1t 0x7ft
        0x1dt 0x63t
        0x4ct 0x4et
        0x15t 0x59t
        0x77t 0x54t
        0xd9t 0x4et
        0x61t 0x4et
        0x71t 0x70t
        0x9bt 0x4et
        0xc3t 0x5ft
        0x74t 0x51t
        0xf6t 0x51t
        0x11t 0x4ft
        0xct 0x62t
        0x5t 0x54t
        0xb6t 0x75t
        0x25t 0x70t
        0x2bt 0x4et
        0xbdt 0x54t
        0x2et 0x59t
        0x7at 0x5et
        0x3bt 0x50t
        0x0t 0x4et
        0x5at 0x4et
        0x94t 0x5et
        0x37t 0x55t
        0x63t 0x4ft
        0x18t 0x4ft
        0xa1t 0x7et
        0xe6t 0x56t
        0xf0t 0x66t
        0x80t 0x84t
        0x0t 0x5et
        0x7dt 0x70t
        0x42t 0x51t
        0x42t 0x72t
        0xaet 0x50t
        0x6bt 0x55t
        0x61t 0x9ct
        0xet 0x60t
        0xfdt 0x66t
        0x12t 0x54t
        0x5at 0x63t
        0xbet 0x6ct
        0x20t 0x5ft
        0x4bt 0x4ft
        0x7t 0x87t
        0x1et 0x8dt
        0xeet 0x9et
        0x4bt 0x4et
        0x2dt 0x4et
        0xdet 0x5dt
        0x31t 0x67t
        0x93t 0x62t
        0xfdt 0x62t
        0x13t 0x4et
        0x86t 0x59t
        0xb9t 0x96t
        0x92t 0x5bt
        0x53t 0x53t
        0xd4t 0x4et
        0x97t 0x5bt
        0xb9t 0x90t
        0xdft 0x79t
        0x97t 0x52t
        0xfat 0x55t
        0xat 0x5ct
        0x28t 0x66t
    .end array-data

    .line 92
    :array_2db4
    .array-data 0x1
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2dbc
    .array-data 0x1
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2dc4
    .array-data 0x1
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2dcc
    .array-data 0x1
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2dd4
    .array-data 0x1
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ddc
    .array-data 0x1
        0x42t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2de4
    .array-data 0x1
        0x42t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2dec
    .array-data 0x1
        0x42t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2df4
    .array-data 0x1
        0x42t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2dfc
    .array-data 0x1
        0x42t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e04
    .array-data 0x1
        0x42t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e0c
    .array-data 0x1
        0x42t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e14
    .array-data 0x1
        0x42t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e1c
    .array-data 0x1
        0x42t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e24
    .array-data 0x1
        0x42t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e2c
    .array-data 0x1
        0x42t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e34
    .array-data 0x1
        0x42t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e3c
    .array-data 0x1
        0x42t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e44
    .array-data 0x1
        0x42t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e4c
    .array-data 0x1
        0x42t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e54
    .array-data 0x1
        0x42t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e5c
    .array-data 0x1
        0x43t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e64
    .array-data 0x1
        0x43t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e6c
    .array-data 0x1
        0x43t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e74
    .array-data 0x1
        0x43t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e7c
    .array-data 0x1
        0x43t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e84
    .array-data 0x1
        0x43t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e8c
    .array-data 0x1
        0x43t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e94
    .array-data 0x1
        0x43t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e9c
    .array-data 0x1
        0x43t
        0x48t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ea4
    .array-data 0x1
        0x43t
        0x48t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2eac
    .array-data 0x1
        0x43t
        0x48t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2eb4
    .array-data 0x1
        0x43t
        0x48t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_2ebc
    .array-data 0x1
        0x43t
        0x48t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ec4
    .array-data 0x1
        0x43t
        0x48t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ecc
    .array-data 0x1
        0x43t
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ed4
    .array-data 0x1
        0x43t
        0x48t
        0x45t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_2edc
    .array-data 0x1
        0x43t
        0x48t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ee4
    .array-data 0x1
        0x43t
        0x48t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_2eec
    .array-data 0x1
        0x43t
        0x48t
        0x4ft
        0x55t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ef4
    .array-data 0x1
        0x43t
        0x48t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2efc
    .array-data 0x1
        0x43t
        0x48t
        0x55t
        0x41t
        0x49t
        0x0t
    .end array-data

    nop

    :array_2f04
    .array-data 0x1
        0x43t
        0x48t
        0x55t
        0x41t
        0x4et
        0x0t
    .end array-data

    nop

    :array_2f0c
    .array-data 0x1
        0x43t
        0x48t
        0x55t
        0x41t
        0x4et
        0x47t
    .end array-data

    nop

    :array_2f14
    .array-data 0x1
        0x43t
        0x48t
        0x55t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f1c
    .array-data 0x1
        0x43t
        0x48t
        0x55t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f24
    .array-data 0x1
        0x43t
        0x48t
        0x55t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f2c
    .array-data 0x1
        0x43t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f34
    .array-data 0x1
        0x43t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f3c
    .array-data 0x1
        0x43t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f44
    .array-data 0x1
        0x43t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f4c
    .array-data 0x1
        0x43t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f54
    .array-data 0x1
        0x43t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f5c
    .array-data 0x1
        0x43t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f64
    .array-data 0x1
        0x43t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f6c
    .array-data 0x1
        0x44t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f74
    .array-data 0x1
        0x44t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f7c
    .array-data 0x1
        0x44t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f84
    .array-data 0x1
        0x44t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f8c
    .array-data 0x1
        0x44t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f94
    .array-data 0x1
        0x44t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f9c
    .array-data 0x1
        0x44t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fa4
    .array-data 0x1
        0x44t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fac
    .array-data 0x1
        0x44t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fb4
    .array-data 0x1
        0x44t
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fbc
    .array-data 0x1
        0x44t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fc4
    .array-data 0x1
        0x44t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fcc
    .array-data 0x1
        0x44t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fd4
    .array-data 0x1
        0x44t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fdc
    .array-data 0x1
        0x44t
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fe4
    .array-data 0x1
        0x44t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2fec
    .array-data 0x1
        0x44t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ff4
    .array-data 0x1
        0x44t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2ffc
    .array-data 0x1
        0x44t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3004
    .array-data 0x1
        0x44t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_300c
    .array-data 0x1
        0x44t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3014
    .array-data 0x1
        0x44t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_301c
    .array-data 0x1
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3024
    .array-data 0x1
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_302c
    .array-data 0x1
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3034
    .array-data 0x1
        0x45t
        0x52t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_303c
    .array-data 0x1
        0x46t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3044
    .array-data 0x1
        0x46t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_304c
    .array-data 0x1
        0x46t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3054
    .array-data 0x1
        0x46t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_305c
    .array-data 0x1
        0x46t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3064
    .array-data 0x1
        0x46t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_306c
    .array-data 0x1
        0x46t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_3074
    .array-data 0x1
        0x46t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_307c
    .array-data 0x1
        0x46t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3084
    .array-data 0x1
        0x46t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_308c
    .array-data 0x1
        0x46t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3094
    .array-data 0x1
        0x47t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_309c
    .array-data 0x1
        0x47t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30a4
    .array-data 0x1
        0x47t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30ac
    .array-data 0x1
        0x47t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30b4
    .array-data 0x1
        0x47t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30bc
    .array-data 0x1
        0x47t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30c4
    .array-data 0x1
        0x47t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30cc
    .array-data 0x1
        0x47t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30d4
    .array-data 0x1
        0x47t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30dc
    .array-data 0x1
        0x47t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30e4
    .array-data 0x1
        0x4at
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30ec
    .array-data 0x1
        0x47t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30f4
    .array-data 0x1
        0x47t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30fc
    .array-data 0x1
        0x47t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3104
    .array-data 0x1
        0x47t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_310c
    .array-data 0x1
        0x47t
        0x55t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3114
    .array-data 0x1
        0x47t
        0x55t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_311c
    .array-data 0x1
        0x47t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3124
    .array-data 0x1
        0x47t
        0x55t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_312c
    .array-data 0x1
        0x47t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3134
    .array-data 0x1
        0x47t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_313c
    .array-data 0x1
        0x47t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3144
    .array-data 0x1
        0x47t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_314c
    .array-data 0x1
        0x48t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3154
    .array-data 0x1
        0x48t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_315c
    .array-data 0x1
        0x48t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3164
    .array-data 0x1
        0x48t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_316c
    .array-data 0x1
        0x48t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3174
    .array-data 0x1
        0x48t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_317c
    .array-data 0x1
        0x48t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3184
    .array-data 0x1
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_318c
    .array-data 0x1
        0x48t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3194
    .array-data 0x1
        0x48t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_319c
    .array-data 0x1
        0x48t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31a4
    .array-data 0x1
        0x48t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31ac
    .array-data 0x1
        0x48t
        0x55t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31b4
    .array-data 0x1
        0x48t
        0x55t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31bc
    .array-data 0x1
        0x48t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_31c4
    .array-data 0x1
        0x48t
        0x55t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_31cc
    .array-data 0x1
        0x48t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31d4
    .array-data 0x1
        0x48t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31dc
    .array-data 0x1
        0x48t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31e4
    .array-data 0x1
        0x4at
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31ec
    .array-data 0x1
        0x4at
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31f4
    .array-data 0x1
        0x4at
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_31fc
    .array-data 0x1
        0x4at
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_3204
    .array-data 0x1
        0x4at
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_320c
    .array-data 0x1
        0x4at
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3214
    .array-data 0x1
        0x4at
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_321c
    .array-data 0x1
        0x4at
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3224
    .array-data 0x1
        0x4at
        0x49t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_322c
    .array-data 0x1
        0x4at
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3234
    .array-data 0x1
        0x4at
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_323c
    .array-data 0x1
        0x4at
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3244
    .array-data 0x1
        0x4at
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_324c
    .array-data 0x1
        0x4at
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3254
    .array-data 0x1
        0x4bt
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_325c
    .array-data 0x1
        0x4bt
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3264
    .array-data 0x1
        0x4bt
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_326c
    .array-data 0x1
        0x4bt
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3274
    .array-data 0x1
        0x4bt
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_327c
    .array-data 0x1
        0x4bt
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3284
    .array-data 0x1
        0x4bt
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_328c
    .array-data 0x1
        0x4bt
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3294
    .array-data 0x1
        0x4bt
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_329c
    .array-data 0x1
        0x4bt
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32a4
    .array-data 0x1
        0x4bt
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32ac
    .array-data 0x1
        0x4bt
        0x55t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32b4
    .array-data 0x1
        0x4bt
        0x55t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32bc
    .array-data 0x1
        0x4bt
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_32c4
    .array-data 0x1
        0x4bt
        0x55t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_32cc
    .array-data 0x1
        0x4bt
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32d4
    .array-data 0x1
        0x4bt
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32dc
    .array-data 0x1
        0x4bt
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32e4
    .array-data 0x1
        0x4ct
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32ec
    .array-data 0x1
        0x4ct
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32f4
    .array-data 0x1
        0x4ct
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32fc
    .array-data 0x1
        0x4ct
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3304
    .array-data 0x1
        0x4ct
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_330c
    .array-data 0x1
        0x4ct
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3314
    .array-data 0x1
        0x4ct
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_331c
    .array-data 0x1
        0x4ct
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3324
    .array-data 0x1
        0x4ct
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_332c
    .array-data 0x1
        0x4ct
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3334
    .array-data 0x1
        0x4ct
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_333c
    .array-data 0x1
        0x4ct
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3344
    .array-data 0x1
        0x4ct
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_334c
    .array-data 0x1
        0x4ct
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_3354
    .array-data 0x1
        0x4ct
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_335c
    .array-data 0x1
        0x4ct
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3364
    .array-data 0x1
        0x4ct
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_336c
    .array-data 0x1
        0x4ct
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3374
    .array-data 0x1
        0x4ct
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_337c
    .array-data 0x1
        0x4ct
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3384
    .array-data 0x1
        0x4ct
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_338c
    .array-data 0x1
        0x4ct
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3394
    .array-data 0x1
        0x4ct
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_339c
    .array-data 0x1
        0x4ct
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_33a4
    .array-data 0x1
        0x4ct
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_33ac
    .array-data 0x1
        0x4dt
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_33b4
    .array-data 0x1
        0x4dt
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_33bc
    .array-data 0x1
        0x4dt
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_33c4
    .array-data 0x1
        0x4dt
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_33cc
    .array-data 0x1
        0x4dt
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_33d4
    .array-data 0x1
        0x4dt
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_33dc
    .array-data 0x1
        0x4dt
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_33e4
    .array-data 0x1
        0x4dt
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_33ec
    .array-data 0x1
        0x4dt
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_33f4
    .array-data 0x1
        0x4dt
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_33fc
    .array-data 0x1
        0x4dt
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_3404
    .array-data 0x1
        0x4dt
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_340c
    .array-data 0x1
        0x4dt
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3414
    .array-data 0x1
        0x4dt
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_341c
    .array-data 0x1
        0x4dt
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3424
    .array-data 0x1
        0x4dt
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_342c
    .array-data 0x1
        0x4dt
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3434
    .array-data 0x1
        0x4dt
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_343c
    .array-data 0x1
        0x4et
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3444
    .array-data 0x1
        0x4et
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_344c
    .array-data 0x1
        0x4et
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3454
    .array-data 0x1
        0x4et
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_345c
    .array-data 0x1
        0x4et
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3464
    .array-data 0x1
        0x4et
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_346c
    .array-data 0x1
        0x4et
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3474
    .array-data 0x1
        0x4et
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_347c
    .array-data 0x1
        0x4et
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3484
    .array-data 0x1
        0x4et
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_348c
    .array-data 0x1
        0x4et
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3494
    .array-data 0x1
        0x4et
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_349c
    .array-data 0x1
        0x4et
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_34a4
    .array-data 0x1
        0x4et
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_34ac
    .array-data 0x1
        0x4et
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_34b4
    .array-data 0x1
        0x4et
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_34bc
    .array-data 0x1
        0x4et
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_34c4
    .array-data 0x1
        0x4et
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_34cc
    .array-data 0x1
        0x4et
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_34d4
    .array-data 0x1
        0x4et
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_34dc
    .array-data 0x1
        0x4et
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_34e4
    .array-data 0x1
        0x4et
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_34ec
    .array-data 0x1
        0x4et
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_34f4
    .array-data 0x1
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_34fc
    .array-data 0x1
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3504
    .array-data 0x1
        0x50t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_350c
    .array-data 0x1
        0x50t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3514
    .array-data 0x1
        0x50t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_351c
    .array-data 0x1
        0x50t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3524
    .array-data 0x1
        0x50t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_352c
    .array-data 0x1
        0x50t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3534
    .array-data 0x1
        0x50t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_353c
    .array-data 0x1
        0x50t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3544
    .array-data 0x1
        0x50t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_354c
    .array-data 0x1
        0x50t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3554
    .array-data 0x1
        0x50t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_355c
    .array-data 0x1
        0x50t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3564
    .array-data 0x1
        0x50t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_356c
    .array-data 0x1
        0x50t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3574
    .array-data 0x1
        0x50t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_357c
    .array-data 0x1
        0x50t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3584
    .array-data 0x1
        0x50t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_358c
    .array-data 0x1
        0x51t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3594
    .array-data 0x1
        0x51t
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_359c
    .array-data 0x1
        0x51t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_35a4
    .array-data 0x1
        0x51t
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_35ac
    .array-data 0x1
        0x51t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_35b4
    .array-data 0x1
        0x51t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_35bc
    .array-data 0x1
        0x51t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_35c4
    .array-data 0x1
        0x51t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_35cc
    .array-data 0x1
        0x51t
        0x49t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_35d4
    .array-data 0x1
        0x51t
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_35dc
    .array-data 0x1
        0x51t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_35e4
    .array-data 0x1
        0x51t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_35ec
    .array-data 0x1
        0x51t
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_35f4
    .array-data 0x1
        0x51t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_35fc
    .array-data 0x1
        0x52t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3604
    .array-data 0x1
        0x52t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_360c
    .array-data 0x1
        0x52t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3614
    .array-data 0x1
        0x52t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_361c
    .array-data 0x1
        0x52t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3624
    .array-data 0x1
        0x52t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_362c
    .array-data 0x1
        0x52t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3634
    .array-data 0x1
        0x52t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_363c
    .array-data 0x1
        0x52t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3644
    .array-data 0x1
        0x52t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_364c
    .array-data 0x1
        0x52t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3654
    .array-data 0x1
        0x52t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_365c
    .array-data 0x1
        0x52t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3664
    .array-data 0x1
        0x52t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_366c
    .array-data 0x1
        0x53t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3674
    .array-data 0x1
        0x53t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_367c
    .array-data 0x1
        0x53t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3684
    .array-data 0x1
        0x53t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_368c
    .array-data 0x1
        0x53t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3694
    .array-data 0x1
        0x53t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_369c
    .array-data 0x1
        0x53t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_36a4
    .array-data 0x1
        0x53t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_36ac
    .array-data 0x1
        0x53t
        0x48t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_36b4
    .array-data 0x1
        0x53t
        0x48t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_36bc
    .array-data 0x1
        0x53t
        0x48t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_36c4
    .array-data 0x1
        0x53t
        0x48t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_36cc
    .array-data 0x1
        0x53t
        0x48t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_36d4
    .array-data 0x1
        0x53t
        0x48t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_36dc
    .array-data 0x1
        0x53t
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_36e4
    .array-data 0x1
        0x53t
        0x48t
        0x45t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_36ec
    .array-data 0x1
        0x53t
        0x48t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_36f4
    .array-data 0x1
        0x53t
        0x48t
        0x4ft
        0x55t
        0x0t
        0x0t
    .end array-data

    nop

    :array_36fc
    .array-data 0x1
        0x53t
        0x48t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3704
    .array-data 0x1
        0x53t
        0x48t
        0x55t
        0x41t
        0x0t
        0x0t
    .end array-data

    nop

    :array_370c
    .array-data 0x1
        0x53t
        0x48t
        0x55t
        0x41t
        0x49t
        0x0t
    .end array-data

    nop

    :array_3714
    .array-data 0x1
        0x53t
        0x48t
        0x55t
        0x41t
        0x4et
        0x0t
    .end array-data

    nop

    :array_371c
    .array-data 0x1
        0x53t
        0x48t
        0x55t
        0x41t
        0x4et
        0x47t
    .end array-data

    nop

    :array_3724
    .array-data 0x1
        0x53t
        0x48t
        0x55t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_372c
    .array-data 0x1
        0x53t
        0x48t
        0x55t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3734
    .array-data 0x1
        0x53t
        0x48t
        0x55t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_373c
    .array-data 0x1
        0x53t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3744
    .array-data 0x1
        0x53t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_374c
    .array-data 0x1
        0x53t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3754
    .array-data 0x1
        0x53t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_375c
    .array-data 0x1
        0x53t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3764
    .array-data 0x1
        0x53t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_376c
    .array-data 0x1
        0x53t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3774
    .array-data 0x1
        0x53t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_377c
    .array-data 0x1
        0x54t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3784
    .array-data 0x1
        0x54t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_378c
    .array-data 0x1
        0x54t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3794
    .array-data 0x1
        0x54t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_379c
    .array-data 0x1
        0x54t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_37a4
    .array-data 0x1
        0x54t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_37ac
    .array-data 0x1
        0x54t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_37b4
    .array-data 0x1
        0x54t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_37bc
    .array-data 0x1
        0x54t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_37c4
    .array-data 0x1
        0x54t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_37cc
    .array-data 0x1
        0x54t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_37d4
    .array-data 0x1
        0x54t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_37dc
    .array-data 0x1
        0x54t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_37e4
    .array-data 0x1
        0x54t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_37ec
    .array-data 0x1
        0x54t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_37f4
    .array-data 0x1
        0x54t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_37fc
    .array-data 0x1
        0x54t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3804
    .array-data 0x1
        0x54t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_380c
    .array-data 0x1
        0x54t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3814
    .array-data 0x1
        0x57t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_381c
    .array-data 0x1
        0x57t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3824
    .array-data 0x1
        0x57t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_382c
    .array-data 0x1
        0x57t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3834
    .array-data 0x1
        0x57t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_383c
    .array-data 0x1
        0x57t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3844
    .array-data 0x1
        0x57t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_384c
    .array-data 0x1
        0x57t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3854
    .array-data 0x1
        0x57t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_385c
    .array-data 0x1
        0x58t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3864
    .array-data 0x1
        0x58t
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_386c
    .array-data 0x1
        0x58t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3874
    .array-data 0x1
        0x58t
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_387c
    .array-data 0x1
        0x58t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_3884
    .array-data 0x1
        0x58t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_388c
    .array-data 0x1
        0x58t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3894
    .array-data 0x1
        0x58t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_389c
    .array-data 0x1
        0x58t
        0x49t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_38a4
    .array-data 0x1
        0x58t
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_38ac
    .array-data 0x1
        0x58t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_38b4
    .array-data 0x1
        0x58t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_38bc
    .array-data 0x1
        0x58t
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_38c4
    .array-data 0x1
        0x58t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_38cc
    .array-data 0x1
        0x59t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_38d4
    .array-data 0x1
        0x59t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_38dc
    .array-data 0x1
        0x59t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_38e4
    .array-data 0x1
        0x59t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_38ec
    .array-data 0x1
        0x59t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_38f4
    .array-data 0x1
        0x59t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_38fc
    .array-data 0x1
        0x59t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3904
    .array-data 0x1
        0x59t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_390c
    .array-data 0x1
        0x59t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3914
    .array-data 0x1
        0x59t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_391c
    .array-data 0x1
        0x59t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3924
    .array-data 0x1
        0x59t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_392c
    .array-data 0x1
        0x59t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3934
    .array-data 0x1
        0x59t
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_393c
    .array-data 0x1
        0x59t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3944
    .array-data 0x1
        0x5at
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_394c
    .array-data 0x1
        0x5at
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3954
    .array-data 0x1
        0x5at
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_395c
    .array-data 0x1
        0x5at
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3964
    .array-data 0x1
        0x5at
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_396c
    .array-data 0x1
        0x5at
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3974
    .array-data 0x1
        0x5at
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_397c
    .array-data 0x1
        0x5at
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3984
    .array-data 0x1
        0x5at
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_398c
    .array-data 0x1
        0x5at
        0x48t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3994
    .array-data 0x1
        0x5at
        0x48t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_399c
    .array-data 0x1
        0x5at
        0x48t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_39a4
    .array-data 0x1
        0x5at
        0x48t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_39ac
    .array-data 0x1
        0x5at
        0x48t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_39b4
    .array-data 0x1
        0x5at
        0x48t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_39bc
    .array-data 0x1
        0x5at
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_39c4
    .array-data 0x1
        0x5at
        0x48t
        0x45t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_39cc
    .array-data 0x1
        0x5at
        0x48t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_39d4
    .array-data 0x1
        0x5at
        0x48t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_39dc
    .array-data 0x1
        0x5at
        0x48t
        0x4ft
        0x55t
        0x0t
        0x0t
    .end array-data

    nop

    :array_39e4
    .array-data 0x1
        0x5at
        0x48t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_39ec
    .array-data 0x1
        0x5at
        0x48t
        0x55t
        0x41t
        0x0t
        0x0t
    .end array-data

    nop

    :array_39f4
    .array-data 0x1
        0x5at
        0x48t
        0x55t
        0x41t
        0x49t
        0x0t
    .end array-data

    nop

    :array_39fc
    .array-data 0x1
        0x5at
        0x48t
        0x55t
        0x41t
        0x4et
        0x0t
    .end array-data

    nop

    :array_3a04
    .array-data 0x1
        0x5at
        0x48t
        0x55t
        0x41t
        0x4et
        0x47t
    .end array-data

    nop

    :array_3a0c
    .array-data 0x1
        0x5at
        0x48t
        0x55t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3a14
    .array-data 0x1
        0x5at
        0x48t
        0x55t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3a1c
    .array-data 0x1
        0x5at
        0x48t
        0x55t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_3a24
    .array-data 0x1
        0x5at
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3a2c
    .array-data 0x1
        0x5at
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3a34
    .array-data 0x1
        0x5at
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3a3c
    .array-data 0x1
        0x5at
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3a44
    .array-data 0x1
        0x5at
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3a4c
    .array-data 0x1
        0x5at
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3a54
    .array-data 0x1
        0x5at
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3a5c
    .array-data 0x1
        0x5at
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 981
    nop

    :array_3a64
    .array-data 0x2
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method protected constructor <init>(Z)V
    .registers 2
    .parameter "hasChinaCollator"

    .prologue
    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput-boolean p1, p0, Lcom/android/internal/util/HanziToPinyin;->mHasChinaCollator:Z

    .line 754
    return-void
.end method

.method private addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V
    .registers 6
    .parameter "sb"
    .parameter
    .parameter "tokenType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/HanziToPinyin$Token;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 976
    .local p2, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/util/HanziToPinyin$Token;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 977
    .local v0, str:Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/HanziToPinyin$Token;

    invoke-direct {v1, p3, v0, v0}, Lcom/android/internal/util/HanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 979
    return-void
.end method

.method public static formatCharToT9(C)C
    .registers 9
    .parameter "c"

    .prologue
    const/16 v7, 0x61

    const/16 v6, 0x41

    .line 90
    if-lt p0, v6, :cond_111

    const/16 v5, 0x5a

    if-gt p0, v5, :cond_111

    .line 861
    sget-object v0, Lcom/android/internal/util/HanziToPinyin;->sT9Map:[C

    .line 93
    .local v0, ac:[C
    sub-int v3, p0, v6

    .line 94
    .local v3, i:I
    aget-char v2, v0, v3

    .line 139
    .end local v0           #ac:[C
    .end local v3           #i:I
    .local v2, c1:C
    :goto_10
    return v2

    .line 96
    .end local v2           #c1:C
    :cond_111
    if-lt p0, v7, :cond_1ee

    const/16 v5, 0x7a

    if-gt p0, v5, :cond_1ee

    .line 98
    sget-object v1, Lcom/android/internal/util/HanziToPinyin;->sT9Map:[C

    .line 99
    .local v1, ac1:[C
    sub-int v4, p0, v7

    .line 100
    .local v4, j:I
    aget-char v2, v1, v4

    .restart local v2       #c1:C
    goto :goto_10

    .line 102
    .end local v1           #ac1:[C
    .end local v2           #c1:C
    .end local v4           #j:I
    :cond_1ee
    const/16 v5, 0x30

    if-lt p0, v5, :cond_28

    const/16 v5, 0x39

    if-gt p0, v5, :cond_28

    .line 103
    move v2, p0

    .restart local v2       #c1:C
    goto :goto_10

    .line 109
    .end local v2           #c1:C
    :cond_28
    const/16 v5, 0x3131

    if-ne p0, v5, :cond_2f

    .line 111
    const/16 v2, 0x31

    .restart local v2       #c1:C
    goto :goto_10

    .line 109
    .end local v2           #c1:C
    :cond_2f
    const/16 v5, 0x314b

    if-ne p0, v5, :cond_36

    .line 111
    const/16 v2, 0x31

    .restart local v2       #c1:C
    goto :goto_10

    .line 109
    .end local v2           #c1:C
    :cond_36
    const/16 v5, 0xc0

    if-lt p0, v5, :cond_41

    const/16 v5, 0xc7

    if-gt p0, v5, :cond_41

    .line 111
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto :goto_10

    .line 105
    .end local v2           #c1:C
    :cond_41
    const/16 v5, 0xe0

    if-lt p0, v5, :cond_4c

    const/16 v5, 0xe7

    if-gt p0, v5, :cond_4c

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_4c
    const/16 v5, 0x100

    if-lt p0, v5, :cond_57

    const/16 v5, 0x10d

    if-gt p0, v5, :cond_57

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_57
    const/16 v5, 0x180

    if-lt p0, v5, :cond_62

    const/16 v5, 0x188

    if-gt p0, v5, :cond_62

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_62
    const/16 v5, 0x1cd

    if-lt p0, v5, :cond_6d

    const/16 v5, 0x1ce

    if-gt p0, v5, :cond_6d

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_6d
    const/16 v5, 0x386

    if-ne p0, v5, :cond_74

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_74
    const/16 v5, 0x391

    if-lt p0, v5, :cond_7f

    const/16 v5, 0x393

    if-gt p0, v5, :cond_7f

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_7f
    const/16 v5, 0x3ac

    if-ne p0, v5, :cond_86

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_86
    const/16 v5, 0x3b1

    if-lt p0, v5, :cond_91

    const/16 v5, 0x3b3

    if-gt p0, v5, :cond_91

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_91
    const/16 v5, 0x410

    if-lt p0, v5, :cond_9d12

    const/16 v5, 0x413

    if-gt p0, v5, :cond_9d12

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_9d12
    const/16 v5, 0x430

    if-lt p0, v5, :cond_999

    const/16 v5, 0x433

    if-gt p0, v5, :cond_999

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_999
    const/16 v5, 0x490

    if-lt p0, v5, :cond_9d

    const/16 v5, 0x491

    if-gt p0, v5, :cond_9d

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_9d
    const/16 v5, 0x1ea0

    if-lt p0, v5, :cond_a9

    const/16 v5, 0x1eb7

    if-gt p0, v5, :cond_a9

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_a9
    const/16 v5, 0x3134

    if-ne p0, v5, :cond_2

    .line 107
    const/16 v2, 0x32

    .restart local v2
    goto/16 :goto_10

    .line 109
    .end local v2 
    :cond_2
    const/16 v5, 0x628      #2-from

    if-lt p0, v5, :cond_3

    const/16 v5, 0x62b      #2-to

    if-gt p0, v5, :cond_3

    .line 111
    const/16 v2, 0x32       #2

    .restart local v2
    goto/16 :goto_10

    .line 109
    .end local v2 
    :cond_3
    const/16 v5, 0x67e

    if-ne p0, v5, :cond_4

    .line 111
    const/16 v2, 0x32       #2

    .restart local v2
    goto/16 :goto_10

    .line 109
    .end local v2 
    :cond_4
    const/16 v5, 0x628

    if-ne p0, v5, :cond_5

    .line 111
    const/16 v2, 0x32       #2

    .restart local v2
    goto/16 :goto_10

    .line 105
    .end local v2
	
    :cond_5
    const/16 v5, 0x5d3

    if-lt p0, v5, :cond_b1

    const/16 v5, 0x5d5

    if-gt p0, v5, :cond_b1

    .line 111
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_b1
    const/16 v5, 0xc8

    if-lt p0, v5, :cond_bd

    const/16 v5, 0xcb

    if-gt p0, v5, :cond_bd

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 121
    .end local v2           #c1:C
    :cond_bd
    const/16 v5, 0xe8

    if-lt p0, v5, :cond_c9

    const/16 v5, 0xeb

    if-gt p0, v5, :cond_c9

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 121
    .end local v2           #c1:C
    :cond_c9
    const/16 v5, 0x10e

    if-lt p0, v5, :cond_d5

    const/16 v5, 0x11b

    if-gt p0, v5, :cond_d5

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 121
    .end local v2           #c1:C
    :cond_d5
    const/16 v5, 0x189

    if-lt p0, v5, :cond_e1

    const/16 v5, 0x192

    if-gt p0, v5, :cond_e1

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 121
    .end local v2           #c1:C
    :cond_e1
    const/16 v5, 0x394

    if-lt p0, v5, :cond_ed

    const/16 v5, 0x396

    if-gt p0, v5, :cond_ed

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 121
    .end local v2           #c1:C
    :cond_ed
    const/16 v5, 0x3ad

    if-ne p0, v5, :cond_f5

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 121
    .end local v2           #c1:C
    :cond_f5
    const/16 v5, 0x3b4

    if-lt p0, v5, :cond_101

    const/16 v5, 0x3b6

    if-gt p0, v5, :cond_101

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 121
    .end local v2           #c1:C
    :cond_101
    const/16 v5, 0x401

    if-ne p0, v5, :cond_1999

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 121
    .end local v2           #c1:C
    :cond_1999
    const/16 v5, 0x451

    if-ne p0, v5, :cond_109a

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 121
    .end local v2           #c1:C
    :cond_109a
    const/16 v5, 0x404

    if-ne p0, v5, :cond_109b

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 121
    .end local v2           #c1:C
    :cond_109b
    const/16 v5, 0x454

    if-ne p0, v5, :cond_109

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 121
    .end local v2           #c1:C
    :cond_109
    const/16 v5, 0x414

    if-lt p0, v5, :cond_1159

    const/16 v5, 0x417

    if-gt p0, v5, :cond_1159

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 121
    .end local v2           #c1:C
    :cond_1159
    const/16 v5, 0x434

    if-lt p0, v5, :cond_115

    const/16 v5, 0x437

    if-gt p0, v5, :cond_115

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 121
    .end local v2           #c1:C
    :cond_115
    const/16 v5, 0x1eb8

    if-lt p0, v5, :cond_121

    const/16 v5, 0x1ec7

    if-gt p0, v5, :cond_121

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 121
    .end local v2           #c1:C
    :cond_121
    const/16 v5, 0x3137

    if-ne p0, v5, :cond_129

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 121
    .end local v2           #c1:C
    :cond_129
    const/16 v5, 0x314c

    if-ne p0, v5, :cond_131

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_131
    const/16 v5, 0x627

    if-ne p0, v5, :cond_7

    .line 107
    const/16 v2, 0x33       #3

    .restart local v2
    goto/16 :goto_10

    .line 105
    .end local v2
    :cond_7
    const/16 v5, 0x621      #3-from

    if-lt p0, v5, :cond_8

    const/16 v5, 0x623      #3-to

    if-gt p0, v5, :cond_8

    .line 107
    const/16 v2, 0x33       #3

    .restart local v2
    goto/16 :goto_10

    .line 105
    .end local v2
    :cond_8
    const/16 v5, 0x625      #3-from

    if-ne p0, v5, :cond_9

    .line 107
    const/16 v2, 0x33       #3

    .restart local v2
    goto/16 :goto_10

    .line 105
    .end local v2
    :cond_9
    const/16 v5, 0x649      #3-from

    if-ne p0, v5, :cond_a

    .line 107
    const/16 v2, 0x33       #3

    .restart local v2
    goto/16 :goto_10

    .line 121
    .end local v2
	
    :cond_a
    const/16 v5, 0x5d0

    if-lt p0, v5, :cond_b

    const/16 v5, 0x5d2

    if-gt p0, v5, :cond_b

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 121
    .end local v2           #c1:C
    :cond_b
    const/16 v5, 0xcc

    if-lt p0, v5, :cond_13d

    const/16 v5, 0xcf

    if-gt p0, v5, :cond_13d

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 117
    .end local v2           #c1:C
    :cond_13d
    const/16 v5, 0xec

    if-lt p0, v5, :cond_149

    const/16 v5, 0xef

    if-gt p0, v5, :cond_149

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 117
    .end local v2           #c1:C
    :cond_149
    const/16 v5, 0x11c

    if-lt p0, v5, :cond_155

    const/16 v5, 0x133

    if-gt p0, v5, :cond_155

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 117
    .end local v2           #c1:C
    :cond_155
    const/16 v5, 0x193

    if-lt p0, v5, :cond_161

    const/16 v5, 0x197

    if-gt p0, v5, :cond_161

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 117
    .end local v2           #c1:C
    :cond_161
    const/16 v5, 0x1cf

    if-lt p0, v5, :cond_16d

    const/16 v5, 0x1d0

    if-gt p0, v5, :cond_16d

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 117
    .end local v2           #c1:C
    :cond_16d
    const/16 v5, 0x396

    if-lt p0, v5, :cond_179

    const/16 v5, 0x399

    if-gt p0, v5, :cond_179

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 117
    .end local v2           #c1:C
    :cond_179
    const/16 v5, 0x3aa

    if-ne p0, v5, :cond_181

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 117
    .end local v2           #c1:C
    :cond_181
    const/16 v5, 0x3ae

    if-lt p0, v5, :cond_18d

    const/16 v5, 0x3af

    if-gt p0, v5, :cond_18d

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 117
    .end local v2           #c1:C
    :cond_18d
    const/16 v5, 0x3b7

    if-lt p0, v5, :cond_199

    const/16 v5, 0x3b9

    if-gt p0, v5, :cond_199

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 117
    .end local v2           #c1:C
    :cond_199
    const/16 v5, 0x3ca

    if-ne p0, v5, :cond_1a1

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 117
    .end local v2           #c1:C
    :cond_1a1
    const/16 v5, 0x406

    if-lt p0, v5, :cond_1ad1

    const/16 v5, 0x407

    if-gt p0, v5, :cond_1ad1

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 117
    .end local v2           #c1:C
    :cond_1ad1
    const/16 v5, 0x418

    if-lt p0, v5, :cond_9191

    const/16 v5, 0x41b

    if-gt p0, v5, :cond_9191

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 117
    .end local v2           #c1:C
    :cond_9191
    const/16 v5, 0x438

    if-lt p0, v5, :cond_1add

    const/16 v5, 0x43b

    if-gt p0, v5, :cond_1add

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 117
    .end local v2           #c1:C
    :cond_1add
    const/16 v5, 0x456

    if-lt p0, v5, :cond_1ad

    const/16 v5, 0x457

    if-gt p0, v5, :cond_1ad

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 117
    .end local v2           #c1:C
    :cond_1ad
    const/16 v5, 0x1ec8

    if-lt p0, v5, :cond_1b9

    const/16 v5, 0x1ecb

    if-gt p0, v5, :cond_1b9

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 117
    .end local v2           #c1:C
    :cond_1b9
    const/16 v5, 0x3139

    if-ne p0, v5, :cond_1c1

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 109
    .end local v2           #c1:C	
    :cond_1c1
    const/16 v5, 0x633      #4-from

    if-lt p0, v5, :cond_c

    const/16 v5, 0x636      #4-to

    if-gt p0, v5, :cond_c

    .line 123
    const/16 v2, 0x34       #4

    .restart local v2
    goto/16 :goto_10

    .line 121
    .end local v2           #c1:C
    :cond_c
    const/16 v5, 0x5dd

    if-lt p0, v5, :cond_d

    const/16 v5, 0x5e0

    if-gt p0, v5, :cond_d

    .line 123
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_10
	
    .line 117
    .end local v2           #c1:C
    :cond_d
    const/16 v5, 0x134

    if-lt p0, v5, :cond_1cd

    const/16 v5, 0x142

    if-gt p0, v5, :cond_1cd

    .line 119
    const/16 v2, 0x35

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_1cd
    const/16 v5, 0x198

    if-lt p0, v5, :cond_1d9

    const/16 v5, 0x19b

    if-gt p0, v5, :cond_1d9

    .line 119
    const/16 v2, 0x35

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_1d9
    const/16 v5, 0x39a

    if-lt p0, v5, :cond_1e5

    const/16 v5, 0x39c

    if-gt p0, v5, :cond_1e5

    .line 119
    const/16 v2, 0x35

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_1e5
    const/16 v5, 0x3ba

    if-lt p0, v5, :cond_1f1

    const/16 v5, 0x3bc

    if-gt p0, v5, :cond_1f1

    .line 119
    const/16 v2, 0x35

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_1f1
    const/16 v5, 0x41c

    if-lt p0, v5, :cond_1fd9

    const/16 v5, 0x41f

    if-gt p0, v5, :cond_1fd9

    .line 119
    const/16 v2, 0x35

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_1fd9
    const/16 v5, 0x43c

    if-lt p0, v5, :cond_1fd

    const/16 v5, 0x43f

    if-gt p0, v5, :cond_1fd

    .line 119
    const/16 v2, 0x35

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_1fd
    const/16 v5, 0x3141

    if-ne p0, v5, :cond_205

    .line 119
    const/16 v2, 0x35

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 117
    .end local v2
    :cond_205
    const/16 v5, 0x62f      #5-from

    if-lt p0, v5, :cond_e

    const/16 v5, 0x632      #5-to

    if-gt p0, v5, :cond_e

    .line 119
    const/16 v2, 0x35       #5

    .restart local v2
    goto/16 :goto_10

    .line 117
    .end local v2
    :cond_e
    const/16 v5, 0x698      #5-from

    if-ne p0, v5, :cond_f

    .line 119
    const/16 v2, 0x35       #5

    .restart local v2
    goto/16 :goto_10

    .line 117
    .end local v2           #c1:C
    :cond_f
    const/16 v5, 0x5d9

    if-lt p0, v5, :cond_10

    const/16 v5, 0x5dc

    if-gt p0, v5, :cond_10

    .line 119
    const/16 v2, 0x35

    .restart local v2       #c1:C
    goto/16 :goto_10	
	
    .line 113
    .end local v2           #c1:C
    :cond_10
    const/16 v5, 0xd1

    if-lt p0, v5, :cond_211

    const/16 v5, 0xd8

    if-gt p0, v5, :cond_211

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_211
    const/16 v5, 0xf1

    if-lt p0, v5, :cond_21d

    const/16 v5, 0xf8

    if-gt p0, v5, :cond_21d

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_21d
    const/16 v5, 0x143

    if-lt p0, v5, :cond_229

    const/16 v5, 0x153

    if-gt p0, v5, :cond_229

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_229
    const/16 v5, 0x19c

    if-lt p0, v5, :cond_235

    const/16 v5, 0x1a3

    if-gt p0, v5, :cond_235

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_235
    const/16 v5, 0x38c

    if-ne p0, v5, :cond_23d

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_23d
    const/16 v5, 0x39d

    if-lt p0, v5, :cond_249

    const/16 v5, 0x39f

    if-gt p0, v5, :cond_249

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_249
    const/16 v5, 0x3bd

    if-lt p0, v5, :cond_255

    const/16 v5, 0x3bf

    if-gt p0, v5, :cond_255

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_255
    const/16 v5, 0x3cc

    if-ne p0, v5, :cond_25d

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_25d
    const/16 v5, 0x420

    if-lt p0, v5, :cond_2699

    const/16 v5, 0x423

    if-gt p0, v5, :cond_2699

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_2699
    const/16 v5, 0x440

    if-lt p0, v5, :cond_269

    const/16 v5, 0x443

    if-gt p0, v5, :cond_269

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_269
    const/16 v5, 0x1ecc

    if-lt p0, v5, :cond_275

    const/16 v5, 0x1ee3

    if-gt p0, v5, :cond_275

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_275
    const/16 v5, 0x3142

    if-ne p0, v5, :cond_27d

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_27d
    const/16 v5, 0x314d

    if-ne p0, v5, :cond_285

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 113
    .end local v2
    :cond_285
    const/16 v5, 0x62c      #6-from

    if-lt p0, v5, :cond_11

    const/16 v5, 0x62e      #6-to

    if-gt p0, v5, :cond_11

    .line 115
    const/16 v2, 0x36       #6

    .restart local v2
    goto/16 :goto_10

    .line 113
    .end local v2
    :cond_11
    const/16 v5, 0x686      #6-from

    if-ne p0, v5, :cond_12

    .line 115
    const/16 v2, 0x36       #6

    .restart local v2
    goto/16 :goto_10

    .line 113
    .end local v2           #c1:C
    :cond_12
    const/16 v5, 0x5d6

    if-lt p0, v5, :cond_13

    const/16 v5, 0x5d8

    if-gt p0, v5, :cond_13

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_10	
	
    .line 113
    .end local v2           #c1:C
    :cond_13
    const/16 v5, 0xdf

    if-ne p0, v5, :cond_28d

    .line 115
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 133
    .end local v2           #c1:C
    :cond_28d
    const/16 v5, 0x154

    if-lt p0, v5, :cond_299

    const/16 v5, 0x161

    if-gt p0, v5, :cond_299

    .line 115
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 133
    .end local v2           #c1:C
    :cond_299
    const/16 v5, 0x1a4

    if-lt p0, v5, :cond_2a5

    const/16 v5, 0x1aa

    if-gt p0, v5, :cond_2a5

    .line 115
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 133
    .end local v2           #c1:C
    :cond_2a5
    const/16 v5, 0x3a0

    if-lt p0, v5, :cond_2b1

    const/16 v5, 0x3a3

    if-gt p0, v5, :cond_2b1

    .line 115
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 133
    .end local v2           #c1:C
    :cond_2b1
    const/16 v5, 0x3c0

    if-lt p0, v5, :cond_2bd

    const/16 v5, 0x3c3

    if-gt p0, v5, :cond_2bd

    .line 115
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 133
    .end local v2           #c1:C
    :cond_2bd
    const/16 v5, 0x424

    if-lt p0, v5, :cond_2c97

    const/16 v5, 0x427

    if-gt p0, v5, :cond_2c97

    .line 115
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 133
    .end local v2           #c1:C
    :cond_2c97
    const/16 v5, 0x444

    if-lt p0, v5, :cond_2c9

    const/16 v5, 0x447

    if-gt p0, v5, :cond_2c9

    .line 115
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 133
    .end local v2           #c1:C
    :cond_2c9
    const/16 v5, 0x3145

    if-ne p0, v5, :cond_2d1

    .line 115
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 133
    .end local v2
    :cond_2d1
    const/16 v5, 0x646      #7-from

    if-lt p0, v5, :cond_14

    const/16 v5, 0x648      #7-to

    if-gt p0, v5, :cond_14

    .line 135
    const/16 v2, 0x37       #7

    .restart local v2
    goto/16 :goto_10

    .line 133
    .end local v2
    :cond_14
    const/16 v5, 0x6cc      #7-from

    if-ne p0, v5, :cond_15

    .line 135
    const/16 v2, 0x37       #7

    .restart local v2
    goto/16 :goto_10

    .line 133
    .end local v2
    :cond_15
    const/16 v5, 0x64a      #7-from

    if-ne p0, v5, :cond_16

    .line 135
    const/16 v2, 0x37       #7

    .restart local v2
    goto/16 :goto_10

    .line 133
    .end local v2
    :cond_16
    const/16 v5, 0x624      #7-from

    if-ne p0, v5, :cond_17

    .line 135
    const/16 v2, 0x37       #7

    .restart local v2
    goto/16 :goto_10

    .line 133
    .end local v2
    :cond_17
    const/16 v5, 0x626      #7-from

    if-ne p0, v5, :cond_18

    .line 135
    const/16 v2, 0x37       #7

    .restart local v2
    goto/16 :goto_10
	
    .line 133
    .end local v2           #c1:C
    :cond_18
    const/16 v5, 0x5e8

    if-lt p0, v5, :cond_19

    const/16 v5, 0x5ea

    if-gt p0, v5, :cond_19

    .line 135
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_10	

    .line 133
    .end local v2           #c1:C
    :cond_19
    const/16 v5, 0xd9

    if-lt p0, v5, :cond_2dd

    const/16 v5, 0xdc

    if-gt p0, v5, :cond_2dd

    .line 135
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 129
    .end local v2           #c1:C
    :cond_2dd
    const/16 v5, 0xf9

    if-lt p0, v5, :cond_2e9

    const/16 v5, 0xfc

    if-gt p0, v5, :cond_2e9

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_2e9
    const/16 v5, 0x162

    if-lt p0, v5, :cond_2f5

    const/16 v5, 0x173

    if-gt p0, v5, :cond_2f5

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_2f5
    const/16 v5, 0x1ab

    if-lt p0, v5, :cond_301

    const/16 v5, 0x1b2

    if-gt p0, v5, :cond_301

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_301
    const/16 v5, 0x1d3

    if-lt p0, v5, :cond_30d

    const/16 v5, 0x1dc

    if-gt p0, v5, :cond_30d

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_30d
    const/16 v5, 0x3a4

    if-lt p0, v5, :cond_319

    const/16 v5, 0x3a6

    if-gt p0, v5, :cond_319

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_319
    const/16 v5, 0x3c4

    if-lt p0, v5, :cond_325

    const/16 v5, 0x3c6

    if-gt p0, v5, :cond_325

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_325
    const/16 v5, 0x3cb

    if-ne p0, v5, :cond_32d

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_32d
    const/16 v5, 0x428

    if-lt p0, v5, :cond_3393

    const/16 v5, 0x42b

    if-gt p0, v5, :cond_3393

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_3393
    const/16 v5, 0x448

    if-lt p0, v5, :cond_339

    const/16 v5, 0x44b

    if-gt p0, v5, :cond_339

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_339
    const/16 v5, 0x1ee4

    if-lt p0, v5, :cond_345

    const/16 v5, 0x1ef1

    if-gt p0, v5, :cond_345

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_345
    const/16 v5, 0x3147

    if-ne p0, v5, :cond_34d

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 129
    .end local v2
    :cond_34d
    const/16 v5, 0x641      #8-from

    if-lt p0, v5, :cond_1a

    const/16 v5, 0x645      #8-to

    if-gt p0, v5, :cond_1a

    .line 131
    const/16 v2, 0x38       #8

    .restart local v2
    goto/16 :goto_10

    .line 129
    .end local v2
    :cond_1a
    const/16 v5, 0x6a9      #8-from

    if-ne p0, v5, :cond_1b

    .line 131
    const/16 v2, 0x38       #8

    .restart local v2
    goto/16 :goto_10

    .line 129
    .end local v2
    :cond_1b
    const/16 v5, 0x6af      #8-from

    if-ne p0, v5, :cond_1c

    .line 131
    const/16 v2, 0x38       #8

    .restart local v2
    goto/16 :goto_10
	
    .line 129
    .end local v2           #c1:C
    :cond_1c
    const/16 v5, 0x5e5

    if-lt p0, v5, :cond_1d

    const/16 v5, 0x5e7

    if-gt p0, v5, :cond_1d

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_10	

    .line 138
    .end local v2           #c1:C
    :cond_1d
    const/16 v5, 0xdd

    if-ne p0, v5, :cond_355

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_355
    const/16 v5, 0xfd

    if-ne p0, v5, :cond_35d

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_35d
    const/16 v5, 0x174

    if-lt p0, v5, :cond_369

    const/16 v5, 0x17e

    if-gt p0, v5, :cond_369

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    :cond_369
    const/16 v5, 0x1b3

    if-lt p0, v5, :cond_375

    const/16 v5, 0x1bf

    if-gt p0, v5, :cond_375

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    .end local v2           #c1:C
    :cond_375
    const/16 v5, 0x38f

    if-ne p0, v5, :cond_37d

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_37d
    const/16 v5, 0x3a7

    if-lt p0, v5, :cond_389

    const/16 v5, 0x3a9

    if-gt p0, v5, :cond_389

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_389
    const/16 v5, 0x3c7

    if-lt p0, v5, :cond_395

    const/16 v5, 0x3c9

    if-gt p0, v5, :cond_395

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_395
    const/16 v5, 0x3ce

    if-ne p0, v5, :cond_39d

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_39d
    const/16 v5, 0x42c

    if-lt p0, v5, :cond_3a9a

    const/16 v5, 0x42f

    if-gt p0, v5, :cond_3a9

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_3a9a
    const/16 v5, 0x44c

    if-lt p0, v5, :cond_3a9

    const/16 v5, 0x44f

    if-gt p0, v5, :cond_3a9

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_3a9
    const/16 v5, 0x1ef2

    if-lt p0, v5, :cond_3b5

    const/16 v5, 0x1ef9

    if-gt p0, v5, :cond_3b5

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_3b5
    const/16 v5, 0x3148

    if-ne p0, v5, :cond_3bd

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_3bd
    const/16 v5, 0x314a

    if-ne p0, v5, :cond_3c5

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 125
    .end local v2 
    :cond_3c5
    const/16 v5, 0x637      #9-from

    if-lt p0, v5, :cond_1e

    const/16 v5, 0x63a      #9-to

    if-gt p0, v5, :cond_1e

    .line 127
    const/16 v2, 0x39       #9

    .restart local v2
    goto/16 :goto_10
	
    .line 125
    .end local v2           #c1:C
    :cond_1e
    const/16 v5, 0x5e1

    if-lt p0, v5, :cond_1f

    const/16 v5, 0x5e4

    if-gt p0, v5, :cond_1f

    .line 127
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_10	

    .line 138
    .end local v2           #c1:C
    :cond_1f
    const/16 v5, 0x314e

    if-ne p0, v5, :cond_3cd

    .line 131
    const/16 v2, 0x30

    .restart local v2       #c1:C
    goto/16 :goto_10

    .line 138
    .end local v2           #c1:C
    :cond_3cd
    const/4 v2, 0x0

    .restart local v2       #c1:C
    goto/16 :goto_10
.end method

.method public static formatCharToT9(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "s"

    .prologue
    const/16 v6, 0x61

    const/16 v5, 0x41

    .line 992
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 993
    const/4 v3, 0x0

    .line 1010
    :goto_b
    return-object v3

    .line 996
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 997
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4f

    .line 998
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 999
    .local v1, c:I
    if-lt v1, v5, :cond_32

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_32

    .line 1000
    sget-object v3, Lcom/android/internal/util/HanziToPinyin;->sT9Map:[C

    sub-int v4, v1, v5

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 997
    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1001
    :cond_32
    if-lt v1, v6, :cond_42

    const/16 v3, 0x7a

    if-gt v1, v3, :cond_42

    .line 1002
    sget-object v3, Lcom/android/internal/util/HanziToPinyin;->sT9Map:[C

    sub-int v4, v1, v6

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 1003
    :cond_42
    const/16 v3, 0x30

    if-lt v1, v3, :cond_2f

    const/16 v3, 0x39

    if-gt v1, v3, :cond_2f

    .line 1004
    int-to-char v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 1010
    .end local v1           #c:I
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_b
.end method

.method public static getInstance()Lcom/android/internal/util/HanziToPinyin;
    .registers 5

    .prologue
    .line 757
    const-class v2, Lcom/android/internal/util/HanziToPinyin;

    monitor-enter v2

    .line 758
    :try_start_3
    sget-object v3, Lcom/android/internal/util/HanziToPinyin;->sInstance:Lcom/android/internal/util/HanziToPinyin;

    if-eqz v3, :cond_c

    .line 759
    sget-object v3, Lcom/android/internal/util/HanziToPinyin;->sInstance:Lcom/android/internal/util/HanziToPinyin;

    monitor-exit v2

    move-object v2, v3

    .line 771
    :goto_b
    return-object v2

    .line 762
    :cond_c
    invoke-static {}, Ljava/text/Collator;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    .line 763
    .local v1, locale:[Ljava/util/Locale;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v3, v1

    if-ge v0, v3, :cond_2e

    .line 764
    aget-object v3, v1, v0

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 765
    new-instance v3, Lcom/android/internal/util/HanziToPinyin;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/internal/util/HanziToPinyin;-><init>(Z)V

    sput-object v3, Lcom/android/internal/util/HanziToPinyin;->sInstance:Lcom/android/internal/util/HanziToPinyin;

    .line 766
    sget-object v3, Lcom/android/internal/util/HanziToPinyin;->sInstance:Lcom/android/internal/util/HanziToPinyin;

    monitor-exit v2

    move-object v2, v3

    goto :goto_b

    .line 763
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 769
    :cond_2e
    const-string v3, "HanziToPinyin"

    const-string v4, "There is no Chinese collator, HanziToPinyin is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    new-instance v3, Lcom/android/internal/util/HanziToPinyin;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/util/HanziToPinyin;-><init>(Z)V

    sput-object v3, Lcom/android/internal/util/HanziToPinyin;->sInstance:Lcom/android/internal/util/HanziToPinyin;

    .line 771
    sget-object v3, Lcom/android/internal/util/HanziToPinyin;->sInstance:Lcom/android/internal/util/HanziToPinyin;

    monitor-exit v2

    move-object v2, v3

    goto :goto_b

    .line 772
    .end local v0           #i:I
    .end local v1           #locale:[Ljava/util/Locale;
    :catchall_42
    move-exception v3

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v3
.end method

.method private getPolyPhoneLastNameTokens(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 847
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    move-object v7, v10

    .line 881
    :goto_a
    return-object v7

    .line 851
    :cond_b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 854
    .local v6, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/util/HanziToPinyin$Token;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v8, :cond_45

    .line 855
    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, hyphenatedName:Ljava/lang/String;
    sget-object v7, Lcom/android/internal/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 857
    .local v4, polyPhones:[Ljava/lang/String;
    if-eqz v4, :cond_45

    .line 858
    const/4 v1, 0x0

    .local v1, i:I
    :goto_25
    array-length v7, v4

    if-ge v1, v7, :cond_43

    .line 859
    new-instance v5, Lcom/android/internal/util/HanziToPinyin$Token;

    invoke-direct {v5}, Lcom/android/internal/util/HanziToPinyin$Token;-><init>()V

    .line 860
    .local v5, token:Lcom/android/internal/util/HanziToPinyin$Token;
    iput v8, v5, Lcom/android/internal/util/HanziToPinyin$Token;->type:I

    .line 861
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 862
    aget-object v7, v4, v1

    iput-object v7, v5, Lcom/android/internal/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 863
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .end local v5           #token:Lcom/android/internal/util/HanziToPinyin$Token;
    :cond_43
    move-object v7, v6

    .line 866
    goto :goto_a

    .line 870
    .end local v0           #hyphenatedName:Ljava/lang/String;
    .end local v1           #i:I
    .end local v4           #polyPhones:[Ljava/lang/String;
    :cond_45
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 871
    .local v2, lastName:Ljava/lang/Character;
    sget-object v7, Lcom/android/internal/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 872
    .local v3, polyPhone:Ljava/lang/String;
    if-eqz v3, :cond_6b

    .line 873
    new-instance v5, Lcom/android/internal/util/HanziToPinyin$Token;

    invoke-direct {v5}, Lcom/android/internal/util/HanziToPinyin$Token;-><init>()V

    .line 874
    .restart local v5       #token:Lcom/android/internal/util/HanziToPinyin$Token;
    iput v8, v5, Lcom/android/internal/util/HanziToPinyin$Token;->type:I

    .line 875
    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 876
    iput-object v3, v5, Lcom/android/internal/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 877
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v6

    .line 878
    goto :goto_a

    .end local v5           #token:Lcom/android/internal/util/HanziToPinyin$Token;
    :cond_6b
    move-object v7, v10

    .line 881
    goto :goto_a
.end method

.method private getToken(C)Lcom/android/internal/util/HanziToPinyin$Token;
    .registers 14
    .parameter "character"

    .prologue
    .line 776
    new-instance v8, Lcom/android/internal/util/HanziToPinyin$Token;

    invoke-direct {v8}, Lcom/android/internal/util/HanziToPinyin$Token;-><init>()V

    .line 778
    .local v8, token:Lcom/android/internal/util/HanziToPinyin$Token;
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .line 779
    .local v4, letter:Ljava/lang/String;
    iput-object v4, v8, Lcom/android/internal/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 780
    const/4 v5, -0x1

    .line 782
    .local v5, offset:I
    const/16 v10, 0x100

    if-ge p1, v10, :cond_16

    .line 783
    const/4 v10, 0x1

    iput v10, v8, Lcom/android/internal/util/HanziToPinyin$Token;->type:I

    .line 784
    iput-object v4, v8, Lcom/android/internal/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 842
    :goto_15
    return-object v8

    .line 786
    :cond_16
    const/16 v10, 0x3400

    if-ge p1, v10, :cond_20

    .line 787
    const/4 v10, 0x3

    iput v10, v8, Lcom/android/internal/util/HanziToPinyin$Token;->type:I

    .line 788
    iput-object v4, v8, Lcom/android/internal/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_15

    .line 790
    :cond_20
    sget-object v10, Lcom/android/internal/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .local v7, polyPhones:[Ljava/lang/String;
    if-eqz v7, :cond_3b

    .line 791
    const/4 v10, 0x2

    iput v10, v8, Lcom/android/internal/util/HanziToPinyin$Token;->type:I

    .line 792
    iput-object v7, v8, Lcom/android/internal/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    .line 793
    iget-object v10, v8, Lcom/android/internal/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iput-object v10, v8, Lcom/android/internal/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_15

    .line 796
    :cond_3b
    sget-object v10, Lcom/android/internal/util/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    const-string/jumbo v11, "\u5416"

    invoke-virtual {v10, v4, v11}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 797
    .local v1, cmp:I
    if-gez v1, :cond_4c

    .line 798
    const/4 v10, 0x3

    iput v10, v8, Lcom/android/internal/util/HanziToPinyin$Token;->type:I

    .line 799
    iput-object v4, v8, Lcom/android/internal/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_15

    .line 801
    :cond_4c
    if-nez v1, :cond_9a

    .line 802
    const/4 v10, 0x2

    iput v10, v8, Lcom/android/internal/util/HanziToPinyin$Token;->type:I

    .line 803
    const/4 v5, 0x0

    .line 817
    :cond_52
    :goto_52
    const/4 v10, 0x2

    iput v10, v8, Lcom/android/internal/util/HanziToPinyin$Token;->type:I

    .line 818
    if-gez v5, :cond_74

    .line 819
    const/4 v0, 0x0

    .line 820
    .local v0, begin:I
    sget-object v10, Lcom/android/internal/util/HanziToPinyin;->UNIHANS:[C

    array-length v10, v10

    const/4 v11, 0x1

    sub-int v2, v10, v11

    .line 821
    .local v2, end:I
    :goto_5e
    if-gt v0, v2, :cond_74

    .line 822
    add-int v10, v0, v2

    div-int/lit8 v5, v10, 0x2

    .line 823
    sget-object v10, Lcom/android/internal/util/HanziToPinyin;->UNIHANS:[C

    aget-char v10, v10, v5

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    .line 824
    .local v9, unihan:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/util/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    invoke-virtual {v10, v4, v9}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 825
    if-nez v1, :cond_b8

    .line 834
    .end local v0           #begin:I
    .end local v2           #end:I
    .end local v9           #unihan:Ljava/lang/String;
    :cond_74
    if-gez v1, :cond_78

    .line 835
    add-int/lit8 v5, v5, -0x1

    .line 837
    :cond_78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 838
    .local v6, pinyin:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_7e
    sget-object v10, Lcom/android/internal/util/HanziToPinyin;->PINYINS:[[B

    aget-object v10, v10, v5

    array-length v10, v10

    if-ge v3, v10, :cond_c1

    sget-object v10, Lcom/android/internal/util/HanziToPinyin;->PINYINS:[[B

    aget-object v10, v10, v5

    aget-byte v10, v10, v3

    if-eqz v10, :cond_c1

    .line 839
    sget-object v10, Lcom/android/internal/util/HanziToPinyin;->PINYINS:[[B

    aget-object v10, v10, v5

    aget-byte v10, v10, v3

    int-to-char v10, v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 838
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    .line 805
    .end local v3           #j:I
    .end local v6           #pinyin:Ljava/lang/StringBuilder;
    :cond_9a
    sget-object v10, Lcom/android/internal/util/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    const-string/jumbo v11, "\u5497"

    invoke-virtual {v10, v4, v11}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 806
    if-lez v1, :cond_ac

    .line 807
    const/4 v10, 0x3

    iput v10, v8, Lcom/android/internal/util/HanziToPinyin$Token;->type:I

    .line 808
    iput-object v4, v8, Lcom/android/internal/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto/16 :goto_15

    .line 810
    :cond_ac
    if-nez v1, :cond_52

    .line 811
    const/4 v10, 0x2

    iput v10, v8, Lcom/android/internal/util/HanziToPinyin$Token;->type:I

    .line 812
    sget-object v10, Lcom/android/internal/util/HanziToPinyin;->UNIHANS:[C

    array-length v10, v10

    const/4 v11, 0x1

    sub-int v5, v10, v11

    goto :goto_52

    .line 827
    .restart local v0       #begin:I
    .restart local v2       #end:I
    .restart local v9       #unihan:Ljava/lang/String;
    :cond_b8
    if-lez v1, :cond_bd

    .line 828
    add-int/lit8 v0, v5, 0x1

    goto :goto_5e

    .line 830
    :cond_bd
    const/4 v10, 0x1

    sub-int v2, v5, v10

    goto :goto_5e

    .line 841
    .end local v0           #begin:I
    .end local v2           #end:I
    .end local v9           #unihan:Ljava/lang/String;
    .restart local v3       #j:I
    .restart local v6       #pinyin:Ljava/lang/StringBuilder;
    :cond_c1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/android/internal/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto/16 :goto_15
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 891
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/internal/util/HanziToPinyin;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .registers 16
    .parameter "input"
    .parameter "filterInvalidChar"
    .parameter "ignoreLastName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 906
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 907
    .local v9, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/util/HanziToPinyin$Token;>;"
    iget-boolean v10, p0, Lcom/android/internal/util/HanziToPinyin;->mHasChinaCollator:Z

    if-eqz v10, :cond_f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 971
    :cond_f
    :goto_f
    return-object v9

    .line 912
    :cond_10
    const/4 v6, 0x0

    .line 913
    .local v6, startIndex:I
    if-nez p3, :cond_26

    .line 914
    invoke-direct {p0, p1}, Lcom/android/internal/util/HanziToPinyin;->getPolyPhoneLastNameTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 915
    .local v3, polyPhoneLastNameTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/util/HanziToPinyin$Token;>;"
    if-eqz v3, :cond_26

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_26

    .line 916
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 917
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 921
    .end local v3           #polyPhoneLastNameTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/util/HanziToPinyin$Token;>;"
    :cond_26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 922
    .local v2, inputLength:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 923
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    .line 928
    .local v8, tokenType:I
    move v1, v6

    .local v1, i:I
    :goto_31
    if-ge v1, v2, :cond_ad

    .line 929
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 930
    .local v0, character:C
    const/16 v10, 0x20

    if-ne v0, v10, :cond_59

    .line 931
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_44

    .line 932
    invoke-direct {p0, v4, v9, v8}, Lcom/android/internal/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 934
    :cond_44
    if-nez p2, :cond_55

    .line 935
    const/16 v10, 0x20

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 936
    .local v5, separator:Ljava/lang/String;
    new-instance v10, Lcom/android/internal/util/HanziToPinyin$Token;

    const/4 v11, 0x3

    invoke-direct {v10, v11, v5, v5}, Lcom/android/internal/util/HanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    .end local v5           #separator:Ljava/lang/String;
    :cond_55
    const/4 v8, 0x3

    .line 928
    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 939
    :cond_59
    const/16 v10, 0x100

    if-ge v0, v10, :cond_6e

    .line 940
    const/4 v10, 0x1

    if-eq v8, v10, :cond_69

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_69

    .line 941
    invoke-direct {p0, v4, v9, v8}, Lcom/android/internal/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 943
    :cond_69
    const/4 v8, 0x1

    .line 944
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 945
    :cond_6e
    const/16 v10, 0x3400

    if-ge v0, v10, :cond_83

    .line 946
    const/4 v10, 0x3

    if-eq v8, v10, :cond_7e

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_7e

    .line 947
    invoke-direct {p0, v4, v9, v8}, Lcom/android/internal/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 949
    :cond_7e
    const/4 v8, 0x3

    .line 950
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 952
    :cond_83
    invoke-direct {p0, v0}, Lcom/android/internal/util/HanziToPinyin;->getToken(C)Lcom/android/internal/util/HanziToPinyin$Token;

    move-result-object v7

    .line 953
    .local v7, t:Lcom/android/internal/util/HanziToPinyin$Token;
    iget v10, v7, Lcom/android/internal/util/HanziToPinyin$Token;->type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9a

    .line 954
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_95

    .line 955
    invoke-direct {p0, v4, v9, v8}, Lcom/android/internal/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 957
    :cond_95
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    const/4 v8, 0x2

    goto :goto_56

    .line 960
    :cond_9a
    iget v10, v7, Lcom/android/internal/util/HanziToPinyin$Token;->type:I

    if-eq v8, v10, :cond_a7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_a7

    .line 961
    invoke-direct {p0, v4, v9, v8}, Lcom/android/internal/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 963
    :cond_a7
    iget v8, v7, Lcom/android/internal/util/HanziToPinyin$Token;->type:I

    .line 964
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 968
    .end local v0           #character:C
    .end local v7           #t:Lcom/android/internal/util/HanziToPinyin$Token;
    :cond_ad
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_f

    .line 969
    invoke-direct {p0, v4, v9, v8}, Lcom/android/internal/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    goto/16 :goto_f
.end method
