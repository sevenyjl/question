UPDATE question
SET title='\n下面保护操作系统的做法正确的有（ ）\n\n',
    options='A. 	\n关闭没有使用的服务，如：Telnet和FTP\n\n\nB. 	\n对存有重要信息的文件目录或分区进行加密\n\n\nC. 	\n启用SELinux，增强系统安全性\n\n\nD. 	\n使用Auditd组件对系统中的重要目录或文件进行审计',
    answer='ABCD',
    remark='',
    original_information='ABCD\n下面保护操作系统的做法正确的有（ ）\n\nA. 	\n关闭没有使用的服务，如：Telnet和FTP\n\n\nB. 	\n对存有重要信息的文件目录或分区进行加密\n\n\nC. 	\n启用SELinux，增强系统安全性\n\n\nD. 	\n使用Auditd组件对系统中的重要目录或文件进行审计',
    q_type='MULTI_CHOICE',
    hide_answer=0,
    likeable=0,
    doubtful=0,
    error_times=0,
    right_times=0,
    doubted_times=0
WHERE id = 288;
delete
from question
where title like '%下面保护操作系统的做法正确的有%'
  and id !='288';
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (878, '以下说法不正确的是', 'A、使用不可信数据构造格式化字符串时，当转换参数与对应的格式符不匹配时，标准类库会抛出异常，不会造成系统信息泄露或拒绝服务\n\nB、用户可以通过输入一个回车符或一个换行符（CRLF）来将一条合法日志拆分成两条日志，使得日志内容可能令人误解\n\nC、尽可能使用“黑名单”策略来接收跨信任边界的数据，而不是使用白名单，白名单校验方式较弱\n\nD、对不可信数据校验建议使用断言的方式校验', 'ACD', 'A 会信息泄露\nB 日志会被拆分，正确\nC 白名单方式净化不仅利于安全，他也允许接收和使用更宽泛的有效用户输入\nD http://image.huawei.com/tiny-lts/v1/images/ad87026bce1f93206b78_665x78.png@900-0-90-f.png', NULL, NULL, '科目2', 'MULTI_CHOICE', 1, 1, 1, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (879, '以下说法正确的是', 'A、将含敏感数据的对象跨信任域传递前需要先加密后签名\n\nB、默认情况下，自动签名认证机制使用JAR文件中包含的公钥来验证签名，这就可以保证公钥和签名未被恶意篡改\n\nC、一些常用的JSON框架都具有type功能，它可以很方便的将java的对象类型和json数据格式之间进行转换，建议默认开启JSON框架的type功能\n\nD、非静态的内部类序列化时会隐式的对外部类实例的非transient对象进行序列化', 'D', '', NULL, NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 1, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (880, 'java中用来对字符串做归一化的方法是', 'A、java.lang.String.intern()\n\nB、java.lang.String.trim()\n\nC、java.text.Format.format()\n\nD、java.text.Normalizer.normalize()', 'D', '在校验之前使用normalize方法对外部输入字符串做归一化/标准化，确保具有相同意义的字符串具有统一的二进制描述，推荐使用Normalizer.Form.NFKC参数进行归一化/标准化。', NULL, NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 1, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (881, '以下说法不正确的是', 'A、临时文件由于会定期被清理掉，所以不用显示的清理临时文件\n\nB、java.nio包中的Buffer类定义了一系列方法，如wrap()、slice()、duplicate()，这些方法会创建一个新的buffer对象，修改这个新buffer对象不会导致原始的封装数据也被修改\n\nC、运行一个外部进程时，如果此进程往其输出流发送任何数据，则必须将其输出流清空。类似的，如果进程会往其错误流发送数据，其错误流也必须被清空\n\nD、Java代码中常用的抽象方法Reader.read()方法用于从流中读取一个字节或字符，返回值的范围为0～65535，所以应定义char类型接收返回值', 'ABD', 'A 临时文件使用完毕必须清理\nB wrap、slice、duplicate不会创建新的buffer对象\nC 正确，防止让外部进程阻塞在输入输出流上\nD http://image.huawei.com/tiny-lts/v1/images/84f5726bce3b263734e1_677x201.png@900-0-90-f.png', NULL, NULL, '科目2', 'MULTI_CHOICE', 1, 1, 1, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (882, '以下代码正确的是', 'A、short s = 1;s = s + 1;\n\nB、\n\nint big = 1999999999;\n\nfloat one=1.0f;\n\nSystem.out.println(big * one);\n\n \n\nC、\n\nint ni = 6789;\n\ndouble d1 = ni / 30;\n\n \n\nD、\n\nlong nl = 4664382371590123456L;\n\ndouble d2 = (double) nl * 2;', 'D', 'A：编译报错应该为s++、s=(short)(s+ 1);\nB：不太懂..应该是精度问题？\nC：返回还是int，但是java会自动转型？不建议\nD：没啥毛病\nC：', NULL, NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 1, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (883, '关于可变参数说法正确的是', 'A、可以接受指定类型的1个到多个参数\n\nB、不建议使用varargs重写使用一个固定长度数组作为参数的方法\n\nC、JDK1.5引入Varargs（variable number of arguments）可变数量参数，应该在确实需要操作可变长度的值的序列时使用\n\nD、可变参数必须位于最后一项', 'BCD', '', NULL, NULL, '科目2', 'MULTI_CHOICE', 1, 1, 1, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (884, '关于方法说法正确的是', 'A、方法的参数个数不应超过5个\n\nB、构造方法如果参数较多，尽量重用\n\nC、方法的入参建议当做工作变量/临时变量\n\nD、避免方法过长，不超过50行（非空非注释）；避免方法的代码块嵌套过深，不要超过4层', 'ABD', '', NULL, NULL, '科目2', 'MULTI_CHOICE', 1, 1, 1, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (885, '以下说法正确的是', 'A、Java 8使用Optional代替null作为返回值或者可能的缺失值;禁止对optional对象赋值为null\n\nB、禁止对optional对象赋值/返回为null，或与null比较\n\nC、不应该返回Optional<Integer> , Optional<Long> , Optional<Double> ,而用OptionalInt,OptionalLong,OptionalDouble\n\nD、枚举常量的序号生成建议依赖ordinal()方法', 'ABC', '', NULL, NULL, '科目2', 'MULTI_CHOICE', 1, 1, 1, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (886, '以下说法正确的是', 'A、不要在代码中硬编码\"\\n\"和\"\\r\"作为换行符号，建议使用System.lineSeparator()方法获取运行时环境的换行符\n\nB、编码时尽量依赖平台默认的字符编码方式\n\nC、String类的toUpperCase()和toLowerCase()方法、format()方法，建议使用默认的编码模式进行转换\n\nD、使用java.nio.charset中的类编码解码字符集', 'AD', '', NULL, NULL, '科目2', 'MULTI_CHOICE', 1, 1, 1, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (887, '关于接口说法正确的是', 'A、接口中可包含静态方法和default方法\n\nB、接口中属性默认public static final修饰词\n\nC、方法已缺省具有public abstract修饰词', 'ABC', '', NULL, NULL, '科目2', 'MULTI_CHOICE', 1, 1, 1, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (888, '目录遍历攻击可以直接带来哪些危害？', 'A、攻击者可以访问受限目录和文件\n\nB、攻击者可以篡改系统的任意文件\n\nC、攻击可可以恶意删除系统中的文件\n\nD、攻击者可以窃取内存中数据', 'ABC', '', NULL, NULL, '科目2', 'MULTI_CHOICE', 1, 1, 1, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (889, '预防ReDos攻击，比较有效的防护手段有', 'A、进行正则匹配前，先对匹配的文本的长度进行校验\n\nB、在编写正则时，尽量不要使用过于复杂的正则，越复杂越容易有缺陷\n\nC、在编写正则时，尽量减少分组的使用\n\nD、避免动态构建正则，当使用不可信数据构造正则时，要使用黑名单进行严格校验', 'ABC', '', NULL, NULL, '科目2', 'MULTI_CHOICE', 1, 1, 1, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (890, '防止未加密的敏感数据被序列的方法有', 'A、使用transient定义敏感数据\n\nB、使用serialPersistentFields定义非敏感数据\n\nC、重新定义Serializable接口的writeObject()、writeReplace()、writeExternal()这些函数，不将包含敏感信息的字段写到序列化字节流中。\n\nD、在在序列化与反序列化涉及的writeObject()和readObject()方法中使用安全管理器', 'ABCD', '', NULL, NULL, '科目2', 'MULTI_CHOICE', 1, 1, 1, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (891, '以下说法正确的是', 'A、文件路径校验前必须先进行标准化处理，建议使用getAbsolutePath()\n\nB、未对程序输入做有效的校验与限制可能会导致zip炸弹攻击、SQL注入、OS命令注入、XML注入以及目录遍历等攻击\n\nC、数值运算，建议使用先决条件检查、Math.*Exact()方法、向上类型转换等方式防止溢出\n\nD、建议通过System.exit()函数来终止运行的程序和线程', 'BC', '', NULL, NULL, '科目2', 'MULTI_CHOICE', 1, 1, 1, 0, 0, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`, `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`, `error_times`, `right_times`, `doubted_times`) VALUES (892, '属于不可信数据列表的有', 'A、命令行\n\nB、用户输入\n\nC、环境变量\n\nD、网络数据', 'ABCD', '', NULL, NULL, '科目2', 'MULTI_CHOICE', 1, 1, 1, 0, 0, 0);

