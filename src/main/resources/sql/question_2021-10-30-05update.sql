INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (975, '针对Map选型，描述正确的是：', 'A. HashMap键、值均可以为null值\nB. HashMap中的数据是无序的\nC. TreeMap中的键是自动排序的，不允许为null值\nD. LinkedHashMap插入元素是有序的', 'ABCD', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (976, 'PreparedStatement.setInt(int parameterIndex, int x)参数的含义', 'A. 把第parameterIndex-1的参数值设置为x\nB. 把第parameterIndex的参数值设置为x\nC. 把第x-1的参数值设置为parameterIndex\nD. 把第x的参数值设置为parameterIndex', 'B', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (977, '有关数据库drop delete truncate的区别，说法正确的是', 'A. 保留表而删除所有数据的时候建议使用truncate\nB. 删除部分数据行时，可以使用delete，并且带上where子句\nC. drop delete truncate只删除表的数据，不会删除表的结构\nD. truncate drop是dll，操作立即生效，原始数据不放到rollback segment中，不能回滚', 'ABD', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (978, '关于DataSource的说法错误的是', 'A. DataSource是用于获取数据库链接的接口\nB. DataSource对象的属性不可以修改\nC. DataSource主要有三种类型实现：基本实现、连接池实现、分布式事务实现\nD. 通过DataSource对象访问的驱动程序本身不会向DriverManager注册', 'B', '解析：\nDataSource对象的属性在必要时可以修改。', '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (979, '属于不可信数据列表的有：', 'A. 命令行\nB. 用户输入\nC. 环境变量\nD. 网络数据', 'ABCD', '解析：\n不可信数据定义：\n1) 文件（包括程序的配置文件）\n2) 注册表\n3) 网络\n4) 环境变量\n5) 命令行\n6) 用户输入（包括命令行、界面）\n7) 用户态数据（对于内核程序）\n8) 进程间通信（包括管道、消息、共享内存、socket等、RPC）\n9) 函数参数（对于API）\n10) 全局变量（在本函数内，其他线程会修改全局变量）', '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (980, '根据华为Java编程规范，这段代码违反了哪个条目？\npublic static List<String> decorate(String[] personDescs) {\nif (personDescs == null || personDescs.length == 0) {\nreturn null;\n}\nList<String> personNames = new ArrayList<>(personDescs.length);\nfor (String personDesc : personDescs) {\nString personName = getPersonName(personDesc);\nif (personName != null && personName.length() != 0) {\npersonNames.add(personName);\n}\n}\nreturn personNames;\n}\npublic static void main (String[] args) {\n// Do something here.\nList<String> personNames = decorate(personDescs);\nif (personNames == null) {\nreturn;\n}\nfor (String personName : personNames) {\n// Do something here.\n}\n}', 'A. 使用类名调用静态方法，而不要使用实例或表达式来调用\nB. 方法的代码块不要嵌套过深，不能超过4层\nC. 当返回类型为数组或者容器时，应返回长度为0的数组或者容器\nD. personName变量需要判断是否为null', 'C', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (981, '根据华为Java编程规范，下列选项中变量声明错误的有哪些？', 'A. int a,b;\nB. int replacementLen = replacement.length();\nString string = sequence.toString();\nint pos = indexIn(string);\nif (replacementLen == 0) {\nreturn removeFrom(sequence);\n}\nif (replacementLen == 1) {\nreturn replaceFrom(sequence, replacement.charAt(0));\n}\nif (pos == -1) {\nreturn string;\n}\nC. String args[];\nD. public boolean matchs (char c) {\nswitch (c) {\ncase \'\\t\':\ncase \'\\n\':\ncase \'\\u205f\':\ncase \'\\u3000\':\nreturn true;\ncase \'\\u2007\':\nreturn false;\ndefault:\nreturn false;\n}\n}', 'ABCD', '解析：\nA错，违反了《华为Java语言通用编程规范-V4.6》规则3.7 每行声明一个变量\nB错，违反了《华为Java语言通用编程规范-V4.6》建议3.10 变量被声明在接近它们首次使用的行\nC错，违反了《华为Java语言通用编程规范-V4.6》规则3.8 禁止C风格的数组声明\nD错，违反了《华为Java语言通用编程规范-V4.6》规则3.9 case语句块结束时如果不加break，需要有注释说明\n(fall-through)', '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (982, '在使用java中的套接字（socket）时，下列代码实现中，哪些选项可能会导致主线程长时间阻塞？', 'A.\nSocket s = new Socket(\"10.116.123.112\", 6526);\nInputStream stream = s.getInputStream();\n// use thread read data\nB.\nSocket s = new Socket(\"10.116.123.112\", 6526);\ns.setSoTimeout(2000)\nInputStream stream = s.getInputStream();\n// use thread read data\nC.\nSocket s = new Socket();\ns.connect(new InetSocketAddress(\"10.116.123.112\", 6526), 1000);\nInputStream stream = s.getInputStream();\n// use thread read data\nD.\nSocket s = new Socket();\ns.connect(new InetSocketAddress(\"10.116.123.112\", 6526));\nInputStream stream = s.getInputStream();\n// use thread read data', 'AD', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (983, '若一个实现了Serializable的类的构造器方法、内部状态获取与修改方法中都涉及安全管理器检查，那么这些安全管理器检查操作也需要应用到这个类的下列哪些方法中', 'A. equals()\nB. writeObject()\nC. readObject()\nD. hashCode()', 'BC', '解析：\n规则7.3 防止序列化和反序列化被利用来绕过安全管理器\n错误示例中，安全管理器检查被应用在构造器中，但在序列化与反序列化涉及的writeObject()和readObject()方法中没有用到。这样会允许不可信代码恶意创建类实例。', '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (984, 'java的安全管理器SecurityManager的policy文件配置如下：\ngrant {\n......\npermission java.util.PropertyPermission \"java.version\", \"read\";\n......\n};\npublic static void main(String... args) {\nSystem.setSecurityManager(new SecurityManager());\nSystem.setProperty(\"java.version\", \"1.7.0_45\");\nString javaNewVersion = System.getProperty(\"java.version\");\nSystem.err.println(javaNewVersion)\n}\n注：sdk的版本是1.8.0_45\n程序输出的结果为：', 'A. 1.8.0_45\nB. 不确定\nC. java.security.AccessControlException.access denied\nD. 1.7.0_45', 'C', '解析：\npolicy文件里面java.version的权限是read，程序去write权限不足', '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (985, '关于序列化说法不正确的是', 'A. 序列化只能保存对象的非静态成员交量，不能保存任何的成员方法和静态的成员变量\nB. transient关键字的作用是：阻止实例中那些用此关键字声明的变量持久化\nC. 当一个父类实现序列化，子类若要实现序列化，需要显式实现Serializable接口\nD. 一个子类实现了Serializable接口，它的父类都没有实现Serializable接口，要想将父类对象也序列化，就需要让父类也实现Serializable接口', 'C', '解析：\n当一个父类实现序列化，子类自动实现序列化，不需要显式实现Serializable接口。\n一个子类实现了Serializable接口，它的父类都没有实现Serializable接口，要想将父类对象也序列化，就需要让父类也实现Serializable接口。', '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (986, '关于JAVA序列化与反序列化错误的是', 'A. 对象的序列化结果是可以在网络中进行传输的字节序列\nB. 反序列化的输入数据可以由外部输入指定\nC. transient关键字可以阻止变量被序列化到文件中\nD. 不要序列化未经加密的敏感数据', 'B', '解析：\nhttp://3ms.huawei.com/km/blogs/details/5896699', '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (987, '关于try-with-resources说法正确的是：', 'A. 不能加finally\nB. 按照创建的资源顺序关闭\nC. try中创建的变量在catch和finally可见\nD. 资源关闭在catch和finally中语句执行之前', 'D', '解析：\n使用try-with-resources优雅的关闭资源。try-with-resources语句保证了每个声明了的资源在语句结束的时候都会被关闭。\n任何实现了java.lang.AutoCloseable接口的对象，或者实现了java.io.Closeable接口的对象，都可以当做资源使用，Closeable继承了AutoCloseable，任何的catch和finally代码块都在所有被声明的资源被关闭后执行。', '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (988, '需要关闭资源，下面哪个写法更好？', 'A.\nInputStream in = ...;\nException ex = null;\ntry {\ntry {\n//code that might throw exceptions\n} catch (Exception e) {\nex = e;\nthrow e;\n}\n} finally {\ntry {\nin.close();\n} catch (Exception e) {\nif (ex == null) throw e;\n}\n}\nB.\ntry (Scanner in = new Scanner(new FileInputStream(\"7usr/share/dict/words\"), \"UTF-8\"); PrintWriter out = new PrintWriter(\"out.txt\")) {\nwhile (in.hasNext()) {\nout.println(in.next().toUpperCase());\n}\n}\nC.\nInputStream in = ...\ntry {\n//code that might throw exceptions\n} finally {\nin.close();\n}', 'B', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (990, '属于经过验证、安全的、公开的加密算法的是：', 'A. AES的ECB模式\nB. RSA\nC. DSA/ECDSA\nD. 加入盐值的SHA256\nE. DES', 'BCD', '解析：\n见 规则9.2 禁止使用私有或者弱加密算法 章节', '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (991, '推荐使用的数字签名算法有', 'A. DSA\nB. ECDSA\nC. RSA\nD. RC4', 'AB', '解析：\n推荐使用的数字签名算法有：\nDSA\nECDSA', '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (992, '下面对zip文件的安全解压缩描述，错误的是', 'A. zip文件解压时，可以使用entry.getSize()对解压缩文件进行文件大小判断\nB. zip文件解压缩时，需判断文件名称中是否存在../这样的返回上层路径的情况\nC. zip文件解压时，需对解压缩的文件数量进行限制检查\nD. zip文件解压时，需通过边阅读文件内容边统计文件实际大小，对文件大小进行限制检查', 'A', '解析：\n恶意攻击者可以伪造ZIP文件中用来描述解压条目大小的字段，因此，getSize()方法的返回值是不可靠的，本地资源实际仍可能被过度消耗。', '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (993, '以下关于异常的说法正确的是', 'A. Throwable是所有Error或Exception的超类\nB. 只有Exception或Exception的子类，才能被catch\nC. Error是正常的应用程序已无能为力的不应该试图捕获的严重问题，如OutOfMemoryError\nD. 编译器会强制要求使用者捕获RuntimeException或声明抛出\n解释：Error类及其子类也可以被catch捕获；Checked异常需要显式处理，否则会编译出错；Runtime异常不需要显式处理或声明抛出', 'AC', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (994, '下面异常声明不推荐的是', 'A. public Image loadImage(String path) throws FileNotFoundException, EOFException\nB. public Image loadImage(String path) throws IOException\nC. public void drawImage(int num) throws ArrayIndexOutOfBoundsException', 'B', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (995, '关于下面代码中shutdown方法说法正确的是？\npublic static void main(String[] args) throws Exception {\nExecutorService executorService = Executors.newFixedThreadPool(10);\nfor (int i = 0; i < 100; i++) {\nexecutorService.submit(new Task());\n}\nexecutorService.shutdown();\nstatic class Task extends Thread {\n@Override\npublic void run() {\n}\n}\n}', 'A. 线程池不再接收新的任务，队列中等待任务不会执行\nB. 线程池终止正在执行的线程\nC. 线程池终止正在执行的线程，和B差不多\nD，线程池不再接收新的任务，队列中等待的任务会执行\nshutdown和shutdownNow的区别：\nshutdown将线程池的状态设置为SHUTWDOWN状态，并不会立即停止\n1) 停止接收外部submit的任务\n2) 内部正在跑的任务和队列里等待的任务，会执行完\n3) 等到第二步完成后，才真正停止\nshutdownNow将线程池状态设置为STOP状态企图立即停止，事实上不一定：\n1) 停止接收外部submit的任务\n2) 忽略队列里等待的任务\n3) 尝试中断正在跑的任务\n4) 返回未执行的任务', 'D', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (996, '如下代码片段中，假设SomeObject是一个暴露给非信任代码交互的类，则[1]处可以加入下面哪项代码：\npublic class SomeObject {\n[1]\npublic void changeValue() {\nsynchronized (lock) {\n// Locks on the private Object\n// ...\n}\n}\n}', 'A. 类锁，所有的实例化对象都共用一把锁，用来控制静态方法的同步。', 'B', '解析：\nC. 非信任域内，锁不能用public\nD. transient修饰后的变量，变量如果是用户自定义变量，则类需要实现序列化接口，而变量本身不可以序列化', '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (997, '下列代码示例中，加锁范围可能为全局而非当前类示例内的有哪些？', 'A.\nprivate final String lock = new String(\"LOCK\").intern();\npublic void doSomthing() {\nsynchronized(lock) {\n// ...\n}\n}\nB.\nprivate final String lock = \"lock\"\npublic void doSomthing() {\nsynchronized(lock) {\n// ...\n}\n}\nC.\nprivate final String lock = new String(\"LOCK\");\npublic void doSomthing() {\nsynchronized(lock) {\n// ...\n}\n}\nD.\nprivate final Boolean = Boolean.TRUE;\npublic void doSomthing() {\nsynchronized(lock) {\n// ...\n}\n}', 'ABD', '解析：\n规则5.2 禁止基于可被重用的对象进行同步\nA、B、D均为规则5.2的错误示例，C为正确示例', '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (998, '以下哪些在接收到Thread.interrupt()会抛出InterruptedException异常', 'A. Thread.sleep()\nB. java.net.Socket的阻塞方法\nC. java.nio.channels.SocketChannel的阻塞方法\nD. Thread.wait()', 'ACD', '解析：\n在编写需要中止的多线程程序时，必须选用能够响应interrupt的标准库或第三方库。Java标准库中的会阻塞的方法（如Thread.sleep()或者SocketChannel.write()）一般会在interrupt之后抛出InterruptedException。但有某些方法则不理会interrupt，如Socket.write()，必须回避这些方法。\n不好的例子：java.net.Socket类的方法阻塞时不响应interrupt！写多线程程序时必须回避这些类。', '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (999, '关于volatile关键字说法正确的是', 'A. volatile修饰的变量会优先读写线程工作内存\nB. 使用volatile可以解决原子性问题\nC. 使用volatile修改的变量，可以直接读取，不会有并发问题\nD. volatile可以解决数据可见性问题，即对volatile变量的变更，可以直接写入主内存', 'D', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1000, 'atomic包下提供的能原子更新数组中元素的类不包括', 'A. AtomicReferenceArray\nB. AtomicIntegerArray\nC. AtomicReference\nD. AtomicLongArray', 'C', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1001, '以下代码中，可以被gc回收的对象有\nclass A {\n}\npublic class Test {\nprivate static A staticA = new A();\npublic static final String CONSTANT = \"i am a string\";\npublic static void main(String[] args) {\nA innerA = new A();\n}\n}', 'A. staticA\nB. CONSTANT\nC. \"i am a string\"\nD. innerA\nGC Roots对象\n1) 虚拟机栈(栈帧中本地变量表)中引入的对象\n2) 方法区中类静态属性引用的对象\n3) 方法区中常量引用的对象\n4) 本地方法中JNI引用的对象', 'ABCD', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1003, '使用javac编译时，包含以下哪几个过程？', 'A. 语义分析及生成字节码\nB. 词法分析及填充符号表\nC. Server Compiler\nD. 注解处理\nE. Client Compiler', 'ABD', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1004, '关于Java中的ClassLoader下面的哪些描述是错误的：', 'A. 默认情况下，Java应用启动过程涉及三个ClassLoader：Boostrap, Extension, System\nB. 一般的情况不同ClassLoader装载的类是不相同的，但接口类例外，对于同一接口所有类装载器装载所获得的类是相同的\nC. 类装载器需要保证类装载过程的线程安全\nD. ClassLoader的loadClass在装载一个类时，如果该类不存在它将返回null\nE. ClassLoader的父子结构中，默认装载采用了父优先\nF. 所有ClassLoader装载的类都来自CLASSPATH环境指定的路径', 'BDF', '解析：\nB：JVM在判定两个class是否相同时，不仅要判断两个类名是否相同，而且要判断是否由同一个类加载器实例加载的。只有两者同时满足的情况下，JVM才认为这两个class是相同的\nD：ClassLoader的loadClass方法加载不存在的类会抛ClassNotFoundException\nF：自定义类加载器实现继承ClassLoader后重写了findClass方法加载指定路径上的class，Boostrap加载器加载核心库类，Extension加载器加载jre/lib/ext下的类，System加载器加载CLASSPATH环境指定路径的类', '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1005, '关于类的卸载机制，表述正确的是', 'A. 一个类被首次加载后，会长期驻留JVM，直到JVM退出\nB. 由用户自定义的类加载器加载的类是可以被卸载的\nC. 由Java虚拟机自带的类加载器所加载的类，在虚拟机的生命周期中，始终不会被卸载\nD. 所有的java类都有一个静态属性class，它代表这个类的class对象', 'BCD', '解析：\nA: 类的生命周期包括7个部分：加载-验证-准备-解析-初始化-使用-卸载\n当一个类被加载、连接和初始化后，它的生命周期就开始了。当代表某个类的Class对象不再被引用，即不可达时，Class对象就会结束生命周期，该类在方法区内的数据也会被卸载，从而结束该类的生命周期。由此可见，一个类何时结束生命周期，取决于代表它的Class对象何时结束生命周期。\nB：由用户自定义的类加载器加载的类是可以被卸载的。\nC：因为Java虚拟机本身会始终引用这些类加载器，而这些类加载器则会始终引用它们所加载的类的Class对象，因此这些Class对象始终是可触及的。前面已经说过当某个类代表的Class对象被回收的时候，这个类才会被卸载。因为该类的Class对象一直被三种类加载器引用，所以这个类在JVM运行过程中永远不会被卸载。\nD：所有的Java类都有一个静态属性class，它代表这个类的Class对象。', '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1006, '下列有关Java反射的说法错误的是：', 'A. 反射可以获取Method，通过invoke进行方法的调用；\nB. 反射不可以直接通过getField获取私有成员的值；\nC. 反射可以获取注解（@Target为Runtime）信息；\nD. 反射可以获取类的构造器', 'C', '解析：\ngetFields方法获得某个类的所有的公共（public）的字段，包括父类中的字段；getDeclaredFields方法获得某个类的所有声明的字段，即包括public、private和proteced，但是不包括父类的申明字段。\n注解@Target没有Runtime，@Retention才有Runtime。', '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1007, '以下代码输出：\nclass Parent {\npublic int a = 100;\nprivate int b = 200;\nprotected int c =300;\npublic int f() {\nreturn 10;\n}\npublic static void main(String[] args) throws IllegalAccessException, InstantiationException {\nField[] fields = Parent.class.getDeclaredFields();\nSystem.out.println(fields.length);\nField[] fields1 = Parent.class.getFields();\nSystem.out.println(fields1.length);\n}\n}', 'A. 1 3\nB. 3 1\nC. 1 1\nD. 3 3\n注：getFields方法获得某个类的所有的公共（public）的字段，包括父类中的字段；getDeclaredFields方法获得某个类的所有声明的字段，即包括public、private和proteced，但是不包括父类的申明字段。', 'B', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1008, '关于Optional说法正确的是？', 'A. Optional可以被赋值为null\nB. Optional.of()可以用null做参数，返回Optional.empty()\nC. Optional.ofNullable(obj)，obj不为null时直接调用Optional.of(obj)\nD. Optiona.of()可以放置集合或对象', 'CD', '解析：\n禁止对optional对象赋值/返回为null，或与null比较', '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1009, '在JAVA中关于抽象类的描述正确的是', 'A. 抽象类必须包含一个抽象方法\nB. 抽象类的方法必须是抽象的\nC. 声明抽象类必须带有abstract\nD. 抽象类可以被实例化', 'C', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1011, 'Java动态代理，(类似RPC框架）问什么阶段生效的？', 'A. 初始化\nB. 编译\nC. 加载\nD. 运行', 'D', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1012, '下面选项中的泛型代码片段哪些是正确的？', 'A.\nstatic class Fruit{}\nstatic class Apple extends Fruit{}\nstatic class BigApple extends Apple {}\npublic static void main(String[] args) {\nList<? super Apple> list = new ArrayList<>();\nlist.add(new BigApple());\nlist.add(new Apple());\n}\nB.\nstatic class Fruit{}\nstatic class Apple extends Fruit{}\npublic static void main(String[] args) {\nList<? extends Fruit> list = new ArrayList<>();\nlist.add(new Apple());\n}\nC.\npublic class ShowTest<T> {\npublic static void show(T t) {\nSystem.out.println(t.toString());\n}\n}\nD.\nstatic class Fruit {}\nstatic class Apple extends Fruit {}\npublic static void main(String[] args) {\nList<Fruit> fruitList = new ArrayList<>();\nList<Appler> appleList = new ArrayList<>();\nfruitList.addAll(appleList);\n}', 'AD', '解析：\n泛型通配符<? extends T>来接收返回的数据，此写法的泛型集合不能使用add方法， 而<? super T>不能使用get方法，作为接口调用赋值时易出错。\n- 1. 频繁往外读取内容的，适合用<? extends T>。\n- 2. 经常往里插入的，适合用<? super T>。\n<? extends T> = <subClass extends T> = T以及T的子类\n<? super T> = <superClass super T> = T以及T的父类', '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1013, '以下代码输出什么\npublic class Point {\nprivate int x;\nprivate int y;\npublic Point(int x, int y) {\nthis.x = x;\nthis.y = y;\n}\npublic void setLocation(int x, int y) {\nthis.x = x;\nthis.y = y;\n}\npublic static void main(String[] args) {\nPoint p1 = new Point(0, 0);\nPoint p2 = new Point(0, 0);\nmodifyPoint(p1, p2);\nSystem.out.println(\"[\" + p1.x + \",\" + p1.y + \"],[\" + p2.x + \",\" + p2.y + \"]\");\n}\nprivate static void modifyPoint(Point p1, Point p2) {\nPoint tmpPoint = p1;\np1 = p2;\np2 = tmpPoint;\np1.setLocation(5, 5);\np2 = new Point(5, 5);\n}\n}', 'A. [0,0],[0,0]\nB. [5,5],[0,0]\nC. [0,0],[5,5]\nD. [5,5],[5,5]', 'C', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1014, '以下代码输出？\nclass Parent {\nint a = 100;\npublic int f() {\nreturn 10;\n}\n}\nclass Son extends Parent {\nint a = 200;\npublic int f() {\nreturn 20;\n}\npublic static void main(String[] args) {\nParent parent = new Son();\nSystem.out.println(parent.f() + \" \" + parent.a);\n}\n}', 'A. 20 100\nB. 20 200\nC. 10 200\nD. 10 100', 'A', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1015, '以下说法正确的是：\nclass Base {\npublic Base(int i) {\nSystem.out.println(\"Base(int i)\");\n}\n}\nclass MyOver extends Base {\npublic MyOver(int i) {\n}\npublic static void main(String[] args) {\nMyOver m = new MyOver(10);\n}\n}', 'A. 输出Base()\nB. 输出Base(int i)\nC. 什么都不输出\nD. 编译错误', 'D', '解析：\n若父类构造函数有参数，则在子类构造函数中需显示调用该父类构造函数', '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1016, '关于函数重写和重载，说法正确的是', 'A. 重写是发生在父子类之间，方法不能抛出新的检查异常或者比被重写方法申明更加宽泛的异常\nB. 重载发生在一个类里面，必须为同名函数，且函数的参数类型不同或参数类型的顺序不同或返回值不同\nC. 重写的返回类型与被重写的返回类型可以不相同，但必须是父类返回值的派生类\nD. 声明为final或static的方法不能被重写', 'ACD', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1018, '下面说法不正确的是：', 'A. 避免文件过长，不超过2000行（非空非注释行）\nB. 一个源文件按顺序包含版权、package、import、顶层类，且用空行分隔\nC. import包应当按照先华为公司，安卓、其它商业组织，其它开源第三方、net/org开源组织、最后java的分类顺序出现，并用一个空行分组\nD. 一个类或接口的声明部分应当按照类变量、实例变量、构造器、方法的顺序出现，且用空行分隔', 'C', '解析：\n建议3.1 import包应当按照先安卓，华为公司，其它商业组织，其它开源第三方、net/org开源组织、最后java的分类顺序出现，并用一个空行分组', '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1019, '生产环境不应该打印什么级别日志？', 'A. debug\nB. warn\nC. error\nD. trace', 'AD', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1020, '需要对对象密封和数字签名来保证数据安全的场景有：', 'A. 序列化敏感数据\nB. 传输敏感数据\nC. 没有使用类似于SSL传输通道\nD. 敏感数据需要长久保存（比如在硬盘驱动器上）', 'ABCD', '解析：\n规则7.2 将含敏感数据的对象跨信任域传递前必须进行签名并加密\n在以下场景中，需要对对象密封和数字签名来保证数据安全：\n1) 序列化或传输敏感数据\n2) 没有使用类似于SSL传输通道\n3) 敏感数据需要长久保存（比如在硬盘驱动器上）', '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1021, '敏感数据传输的正确处理：', 'A. 仅加密\nB. 仅签名\nC. 先加密后签名\nD. 先签名后加密', 'D', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1022, '有整数溢出风险的符号', 'A. ++\nB. %\nC. +=\nD. Java.lang.math.abs()', 'ACD', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1023, '以下有关Thread异常处理说法正确的是\nA．子线程自身不必捕获异常，而是由主线程捕获即可\nB．对于运行时异常可调用Thread.setUncaughtExceptionHandler()方法设置运行时异常处理器来进行处理\nC．默认情况下，运行时异常从线程抛出时，会在控制台输出堆栈记录\nD．子线程须自己捕获异常处理\n107. 按照编程规范，下列哪些信息时禁止输入到日志中的 (BCD)\nA．事件发生的时间、事件类型\nB．密钥\nC．明文口令\nD．密文口令\n108. 有关类加载器的双亲委派模型说法错误的是 (C)', 'A. 类加载器之间是有层次结构的\nB. 加载不到类，会抛出ClassNotFoundException();\nC. 如果一个类加载器收到了类加载请求，先检查自己能不能加载，如果不能，向父加载器申请；\nD. 如果一个类加载器收到了类加载请求，先看父加载器能不能加载，一直如此到顶端加载器，顶端类加载器可以加载，则返回，如果不行本类加载器加载', 'BCD', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1024, '下面关于字符流和字节流说法正确的是', 'A. 字符向字节转换时，需要注意编码问题\nB. 字节流继承于InputStream OutputStream，字符流继承于InputSteamReader OutputStreamWriter\nC. 字符流使用了缓冲区(Buffer)，而字节流没有使用缓冲区\nD. 字符是字节通过不同编码的包装，相同的字节代表相同的字符', 'ABC', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1025, '集合描述错误的是', 'A. ArrayList的默认长度值16\nB. HashMap的默认长度值16\nC. HashSet的默认长度值16\nD. StringBuﬀer的默认长度值16', 'A', '解析：ArrayList默认是10', '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1026, '禁止将系统内部使用的锁对象暴露给不可信代码', 'A. private final Boolean lock1 = Boolean.FALSE;\nB. private final Integer lock2 = 0;\nC. private final String lock3 = \"lock\";\nD. private final Integer lock4 = new Integer(0);', 'D', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1027, '容易被利用Dos攻击的异常', 'A. Java.lang.OutOfMemoryError\nB. Java.lang.StackOverflowError\nC. JarException\nD. InSufficientResourceException', 'ABD', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'MULTI_CHOICE', 1, 1, 0, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (1028, 'Sytem.exit()调用方式符合安全编程规范的', 'A. JAVA进程出现OOM，主动调用System.exit()，结束进程\nB. 服务出现不能自愈的异常，直接调用System.exit()，终止进程\nC. 允许外部传入的命令中有System.exit()\nD. 命令行工具使用System.exit()\n例外场景：\n在命令行应用中调用System.exit()函数是允许的。', 'D', NULL, '科目二来着熊绒的博客', NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0, 0, 0, 0);

UPDATE question  SET error_times=1,right_times=0,doubted_times=0  WHERE id=1003;
