.class Lcom/csvreader/CsvReader$ComplexEscape;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csvreader/CsvReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComplexEscape"
.end annotation


# static fields
.field private static final DECIMAL:I = 0x3

.field private static final HEX:I = 0x4

.field private static final OCTAL:I = 0x2

.field private static final UNICODE:I = 0x1


# instance fields
.field private final this$0:Lcom/csvreader/CsvReader;


# direct methods
.method private constructor <init>(Lcom/csvreader/CsvReader;)V
    .locals 0

    iput-object p1, p0, Lcom/csvreader/CsvReader$ComplexEscape;->this$0:Lcom/csvreader/CsvReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
