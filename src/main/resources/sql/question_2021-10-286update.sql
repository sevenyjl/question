UPDATE question  SET title='已知如下代码public static void main(String[] args) {	int nr = 5;	do{		System.out.print(nr)	}while(--nr>5);	System.out.print("finished");}执行后的输出包含什么？',options='A. 5B. 4C. finishedD. 6',answer='AC',original_information='52、已知如下代码1public static void main(String[] args) {2int nr = 5;3do{4System.out.print(nr)5}while(--nr>5);6System.out.print("finished");7}执行后的输出包含什么？A. 5B. 4C. finishedD. 6答案：AC',q_type='MULTI_CHOICE',hide_answer='true'  WHERE id=52;
UPDATE question  SET title='下列单例实现正确的是',options='A.package apitest;public final class Helper {    public Helper() {    }}final class Foo {    private Helper helper = null;    public Helper getHelper() {（这是双重锁机制带来的问题导致的）        if (helper == null) {            ()            synchronized (this) {                if (helper == null) {                    helper = new Helper();                }            }        }        return helper;    }}B.public final class Helper {    private final int n;    public Helper(int n) {        this.n = n;    }}final class Foo {    private Helper helper = null;    public Helper getHelper() {        Helper h = helper;        if (h == null) {            synchronized (this) {                h = helper;（这个是什么含义呢）                if (h == null) {                    h = new Helper(42);                    helper = h;                }            }        }        return h;    }}C.public final class Helper {    private final int n;    public Helper(int n) {        this.n = n;    }}final class Foo {    private Helper helper = null;    public Helper getHelper() {        if (helper == null) {            synchronized (this) {                if (helper == null) {                    helper = new Helper(42);                }            }        }        return helper;    }}D.public final class Helper {    public Helper() {}}final class Foo {    private static class Holder{        static Helper helper = new Helper()（虽然不是懒加载机制，但是也是可行的）;    }    public Helper getInstance(){        return Holder.helper;    }}',answer='BD',original_information='49、下列单例实现正确的是A.1public final class Helper{2public Helper() { }3}4final class Foo{5private Helper helper = null;6public Helper getHelper(){（这是双重锁机制带来的问题导致的）7if(helper ==null){()8synchronized (this){9if(helper ==null){10helper = new Helper();11}12}13}14return helper;15}16}B.1public final class Helper {2private final int n;3public Helper(int n) {4this.n = n;5}6}7final class Foo {8private Helper helper = null;9public Helper getHelper() {10Helper h =helper;11if (h == null) {12synchronized (this) {13h=helper;（这个是什么含义呢）14if (h == null) {15h = new Helper(42);16helper = h;17}18}19}20return h;21}22}C.1public final class Helper {2private final int n;3public Helper(int n) {4this.n = n;5}6}7final class Foo {8private Helper helper = null;9public Helper getHelper() {10if (helper == null) {11synchronized (this) {12if (helper == null) {13helper = new Helper(42);14}15}16}17return helper;18}19}D.1public final class Helper {2public Helper() {}3}4final class Foo {5private static class Holder{6static Helper helper = new Helper()（虽然不是懒加载机制，但是也是可行的）;7}8public Helper getInstance(){9return Holder.helper;10}11}答案：BD',q_type='MULTI_CHOICE',hide_answer='true'  WHERE id=49;
UPDATE question  SET title='下列单例实现正确的是',options='A.package apitest;public final class Helper {    public Helper() {    }}final class Foo {    private Helper helper = null;    public Helper getHelper() {（这是双重锁机制带来的问题导致的）        if (helper == null) {            synchronized (this) {                if (helper == null) {                    helper = new Helper();                }            }        }        return helper;    }}B.public final class Helper {    private final int n;    public Helper(int n) {        this.n = n;    }}final class Foo {    private Helper helper = null;    public Helper getHelper() {        Helper h = helper;        if (h == null) {            synchronized (this) {                h = helper;（这个是什么含义呢）                if (h == null) {                    h = new Helper(42);                    helper = h;                }            }        }        return h;    }}C.public final class Helper {    private final int n;    public Helper(int n) {        this.n = n;    }}final class Foo {    private Helper helper = null;    public Helper getHelper() {        if (helper == null) {            synchronized (this) {                if (helper == null) {                    helper = new Helper(42);                }            }        }        return helper;    }}D.public final class Helper {    public Helper() {}}final class Foo {    private static class Holder{        static Helper helper = new Helper()（虽然不是懒加载机制，但是也是可行的）;    }    public Helper getInstance(){        return Holder.helper;    }}',answer='BD',original_information='49、下列单例实现正确的是A.1public final class Helper{2public Helper() { }3}4final class Foo{5private Helper helper = null;6public Helper getHelper(){（这是双重锁机制带来的问题导致的）7if(helper ==null){()8synchronized (this){9if(helper ==null){10helper = new Helper();11}12}13}14return helper;15}16}B.1public final class Helper {2private final int n;3public Helper(int n) {4this.n = n;5}6}7final class Foo {8private Helper helper = null;9public Helper getHelper() {10Helper h =helper;11if (h == null) {12synchronized (this) {13h=helper;（这个是什么含义呢）14if (h == null) {15h = new Helper(42);16helper = h;17}18}19}20return h;21}22}C.1public final class Helper {2private final int n;3public Helper(int n) {4this.n = n;5}6}7final class Foo {8private Helper helper = null;9public Helper getHelper() {10if (helper == null) {11synchronized (this) {12if (helper == null) {13helper = new Helper(42);14}15}16}17return helper;18}19}D.1public final class Helper {2public Helper() {}3}4final class Foo {5private static class Holder{6static Helper helper = new Helper()（虽然不是懒加载机制，但是也是可行的）;7}8public Helper getInstance(){9return Holder.helper;10}11}答案：BD',q_type='MULTI_CHOICE',hide_answer='true'  WHERE id=49;
UPDATE question  SET title='下列单例实现正确的是',options='A.package apitest;public final class Helper {    public Helper() {    }}final class Foo {    private Helper helper = null;    public Helper getHelper() {（这是双重锁机制带来的问题导致的）        if (helper == null) {            synchronized (this) {                if (helper == null) {                    helper = new Helper();                }            }        }        return helper;    }}B.public final class Helper {    private final int n;    public Helper(int n) {        this.n = n;    }}final class Foo {    private Helper helper = null;    public Helper getHelper() {        Helper h = helper;        if (h == null) {            synchronized (this) {                h = helper;（这个是什么含义呢）                if (h == null) {                    h = new Helper(42);                    helper = h;                }            }        }        return h;    }}C.public final class Helper {    private final int n;    public Helper(int n) {        this.n = n;    }}final class Foo {    private Helper helper = null;    public Helper getHelper() {        if (helper == null) {            synchronized (this) {                if (helper == null) {                    helper = new Helper(42);                }            }        }        return helper;    }}D.public final class Helper {    public Helper() {}}final class Foo {    private static class Holder{        static Helper helper = new Helper()（虽然不是懒加载机制，但是也是可行的）;    }    public Helper getInstance(){        return Holder.helper;    }}',answer='BD',parsing='选项A的private Helper helper = null; 没有加volatile进行修饰，可能线程A和线程B都进入了第一个判断，但是A先获取锁，B被阻塞，A释放后创建了helper对象但是B又能获取锁创建一个新的helper对象违背单例模式原则选项B在获取锁后重新赋值了h的值类似与volatile通知线程修改副本值，所以即使没有加入volatile修饰也是可行的选项C同选项A一样选项D是饿汉式非懒加载，但是线程安全故选择：BD',original_information='49、下列单例实现正确的是A.1public final class Helper{2public Helper() { }3}4final class Foo{5private Helper helper = null;6public Helper getHelper(){（这是双重锁机制带来的问题导致的）7if(helper ==null){()8synchronized (this){9if(helper ==null){10helper = new Helper();11}12}13}14return helper;15}16}B.1public final class Helper {2private final int n;3public Helper(int n) {4this.n = n;5}6}7final class Foo {8private Helper helper = null;9public Helper getHelper() {10Helper h =helper;11if (h == null) {12synchronized (this) {13h=helper;（这个是什么含义呢）14if (h == null) {15h = new Helper(42);16helper = h;17}18}19}20return h;21}22}C.1public final class Helper {2private final int n;3public Helper(int n) {4this.n = n;5}6}7final class Foo {8private Helper helper = null;9public Helper getHelper() {10if (helper == null) {11synchronized (this) {12if (helper == null) {13helper = new Helper(42);14}15}16}17return helper;18}19}D.1public final class Helper {2public Helper() {}3}4final class Foo {5private static class Holder{6static Helper helper = new Helper()（虽然不是懒加载机制，但是也是可行的）;7}8public Helper getInstance(){9return Holder.helper;10}11}答案：BD',q_type='MULTI_CHOICE',hide_answer='false'  WHERE id=49;
UPDATE question  SET title='属性from to保存的是敏感信息，则以下代码中序列化没有安全问题的是（）',options='A.public class GpsLocation implements Serializable {    private double from;    private double to;    private String id; // non-sensitive field    // other content}（完全裸露在外）B.public class GpsLocation implements Serializable {    private double from;    private double to;    private String id; // non-sensitive field    // other content        private static final ObjectStreamField[] serialPersistentFields = {new ObjectStreamField("id", String.class)};}（看来它认为from和to是敏感信息，明确了只能序列化的字段）C.public class GpsLocation implements Serializable {    private volatile double from;    private volatile double to;    private String id; // non-sensitive field    // other content}D .public class GpsLocation implements Serializable {    private transient double from;    private transient double to;    private String id; // non-sensitive field    // other content}',answer='BD',parsing='防止字段被序列化方式：1. 使用transient修饰2. 明确只能序列化的字段/明确不能序列化的字段（方法待总结~）故BD正确',original_information='48、属性from to保存的是敏感信息，则以下代码中序列化没有安全问题的是（）A.1public class GpsLocation implements Serializable{2private double from;3private double to;4private String id; // non-sensitive field5// other content6}（完全裸露在外）B.1public class GpsLocation implements Serializable{2private double from;3private double to;4private String id; // non-sensitive field5// other content6private static final ObjectStreamField[] serialPersistentFields = {new ObjectStreamField("id", String.class)};7}（看来它认为from和to是敏感信息，明确了只能序列化的字段）C.1public class GpsLocation implements Serializable{2private volatile double from;3private volatile double to;4private String id; // non-sensitive field5// other content6}D.1public class GpsLocation implements Serializable{2private transient double from;3private transient double to;4private String id; // non-sensitive field5// other content6}答案：BD',q_type='MULTI_CHOICE',hide_answer='true'  WHERE id=48;
UPDATE question  SET title='以下代码可能导致命令注入的的有()',options='AString encodeIP=HWEncoder.encodeForOS(new WindowsCodec(),args[0]);String cmd="cmd.exe /c ping "+encodeIP;Bif(Pattern.matches("[0-9A-Za-z@]+”, dir)) {Process proc=rt.exec(cmd.exec/c" + dir);}CFile dir=new File(args[0]);if(!validate(dir)){（对文件进行了检查）System.out.println("An illegal directory”);}DProcessor proc=rt.exec("cmd.exe /c dir ” + args[0]);',answer='D',parsing='选项A:使用HWEncoder进行特殊字符转码，可以有效避免注入选项B：使用正则校验，过滤特殊字符选项C：对文件的有效性进行校验选项D：无任何校验，可能导致命令注入',original_information='39、以下代码可能导致命令注入的的有()A1String encodeIP = HWEncoder.encodeForOS(new WindowsCodec(), args[0]);2String cmd = "cmd.exe /c ping " + encodeIP;B1if (Pattern.matches("[0-9A-Za-z@]+”, dir)) {2Process proc = rt.exec(cmd.exec /c " + dir);3}C1File dir = new File(args[0]);2if (!validate(dir)) {（对文件进行了检查）3System.out.println("An illegal directory”);4}D1Processor proc = rt.exec("cmd.exe /c dir ” + args[0]);答案：D',q_type='SINGLE_CHOICE',hide_answer='true'  WHERE id=39;
UPDATE question  SET title='以下描述错误的是',options='Apublic String getProductSummary(int index) {    return products[index];}//该代码中index未校验，可能相起数组越界访问BString userName = "name”;ResultSet rs = st.executeQuery("select * from user where name = ‘” + userName + "’”);//该代码可能会产生SQL注入漏洞（是不是里面的双引号起的作用）CRuntime.getRuntime().exec("cmd.exe /c dir ” + args[0]);//该代码可能会引起命令注入DString command = System.getProPerty("command”);Runtime.getRuntime().exec("command”);//该代码可能会引起OS命令注入（这个和环境变量耦合在一起的使用命令）',answer='B',parsing='B 不是因为里面符号导致，而是没有使用PreparedStatement或者拼接前对字符进行校验',original_information='38、以下描述错误的是A1public String getProductSummary(int index) {2return products[index];3}4//该代码中index未校验，可能相起数组越界访问B1String userName = "name”;2ResultSet rs = st.executeQuery("select * from user where name = ‘” + userName + "’”);3//该代码可能会产生SQL注入漏洞（是不是里面的双引号起的作用）C1Runtime.getRuntime().exec("cmd.exe /c dir ” + args[0]);2//该代码可能会引起命令注入D1String command = System.getProPerty("command”);2Runtime.getRuntime().exec("command”);3//该代码可能会引起OS命令注入（这个和环境变量耦合在一起的使用命令）答案：B',q_type='SINGLE_CHOICE',hide_answer='true'  WHERE id=38;
UPDATE question  SET title='根据安全编码规范，以下代码中正确的时（）（不能和操作耦合在一起去思考）',options='Aassert (Patten.matches("[0-9A-Za-z@]+", dir);Process proc = rt.exec("cmd.exe /c " + dir);BArrayList<String> names;//…assert names.remove(null);Cassert index++ != MAX_LENGTH;  这里的自增操作Dboolean isNullsRemoved = names.remove(null);assert isNullsRemoved // 所以每次都会出现这个情况啊',answer='D',parsing='没懂A为啥不对',original_information='33、根据安全编码规范，以下代码中正确的时（）（不能和操作耦合在一起去思考）A1assert (Patten.matches("[0-9A-Za-z@]+”, dir);2Process proc = rt.exec(”cmd.exe /c " + dir);B1ArrayList<String> names;2//…3assert names.remove(null);C1assert index++ != MAX_LENGTH;  这里的自增操作D1boolean isNullsRemoved = names.remove(null);2assert isNullsRemoved // 所以每次都会出现这个情况啊答案：D',q_type='SINGLE_CHOICE',hide_answer='true'  WHERE id=33;
UPDATE question  SET title='以下代码片断输出的结果是：（Integer.valueOf()如果数值比较小，还是会复用之前的数据的，intern应该是重建一个integer）public class Demo {    public static void main(String[] args) {        Integer fst = 1;        Integer snd = new Integer(1);        System.out.println(fst == snd);        System.out.println(new Integer(1) == snd);        System.out.println(fst == Integer.valueOf(1));        Integer trd = 256;        System.out.println(trd == Integer.valueOf(256));    }}',options='A false,false,true,falseB false,false,true,trueC false,false,false,falseD true,false,false,false',answer='A',original_information='30、以下代码片断输出的结果是：（Integer.valueOf()如果数值比较小，还是会复用之前的数据的，intern应该是重建一个integer）1Public class Demo {2Public static void main(String[] args) {3Integer fst = 1;4Integer snd = new Integer(1);5System.out.println(fst == snd);6System.out.println(new Integer(1) == snd);7System.out.println(fst == Integer.valueOf(1));8Integer trd = 256;9System.out.println(trd == Integer.valueOf(256));10}11}A false,false,true,falseB false,false,true,trueC false,false,false,falseD true,false,false,false答案：A',q_type='SINGLE_CHOICE',hide_answer='true'  WHERE id=30;
UPDATE question  SET title='如下代码执条结果是：public class Foo {    public static void main(String[] args) {        for (float flt = (float)1000000000;flt < 1000000010; flt++) {            System.out.println(flt);        }    }}',options='A 1000000000​1000000001​1000000002​ ….​1000000010​B 1000000000.0​C 输出结果不确定',answer='C',original_information='29、如下代码执条结果是：1public class Foo {2public static void main(String[] args) {3for (float flt = (float)1000000000;flt < 1000000010; flt++) {4System.out.println(flt);5}6}7}​A 1000000000​1000000001​1000000002​ ….​1000000010​B 1000000000.0​ C 输出结果不确定答案：C',q_type='SINGLE_CHOICE',hide_answer='true'  WHERE id=29;
UPDATE question  SET title='下面锁用的正确的是：',options='Aprivate int count=0;private final Integer lock=new Integer(count);public void doSomething(){    Synchronized(lock){    Count++;    }} Bprivate final String lock="LOCK”;public void doSomething(){    synchronized (lock){    //..    }}C Boolean isInitialized=Boolean.FALSE;（难道说Boolean.FALSE也不具备唯一性质吗）public void doSomething(){    synchronized (isInitialized){    //..    }}    Dprivate int count=0;private final integer lock=count;锁必须不能是公共人可以获取的东西public void doSomething(){    synchronized (lock){        lock++;    }}（因为别的程序还要用）',answer='A',original_information='27、下面锁用的正确的是：A1private int count = 0;2private final Integer lock = new Integer(count);3public void doSomething() {4Synchronized (lock) {5Count++;6}B1private final String lock = "LOCK”;2public void doSomething() {3synchronized (lock) {4//..5}6}C1Boolean isInitialized = Boolean.FALSE;（难道说Boolean.FALSE也不具备唯一性质吗）2public void doSomething() {3synchronized (isInitialized) {4//..5}6}D1private int count = 0;2Private final integer lock = count;锁必须不能是公共人可以获取的东西3public void doSomething() {4synchronized (lock) {5lock++;6}7}（因为别的程序还要用）答案：A',q_type='SINGLE_CHOICE',hide_answer='true'  WHERE id=27;
alter table question
    add doubtful tinyint default 1 null comment '存疑的0存疑1不存疑';

alter table question
    add `likeable` tinyint default 1 null comment '收藏 0收藏1不收藏';
UPDATE question  SET likeable=0,doubtful=0;