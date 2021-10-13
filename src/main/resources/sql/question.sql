/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : question

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 12/10/2021 22:52:44
*/

SET NAMES utf8mb4;
SET
FOREIGN_KEY_CHECKS = 0;
creat
create DATABASE if not exists question;
use
question;

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`
(
    `id`                   int(11) NOT NULL AUTO_INCREMENT,
    `title`                text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '题目',
    `options`              text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '选项',
    `answer`               varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案',
    `parsing`              text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '解析',
    `remark`               text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
    `original_information` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '原始信息',
    `subject`              varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科目',
    `q_type`               varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '题型',
    `hide_answer`          tinyint(4) NULL DEFAULT 1 COMMENT '0隐藏1显示',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question`
VALUES (1, '下列说法错误的是（）\n\n',
        'A 反射可以获取类的构造器\n\nB 反射可获以Method,通过invoke进行方法的调用；\n\nC 反射可以获取注解（@Target为Runtime）信息；\n\nD 反射能够直接get(obj)获取私有的Field成员的值；\n\n',
        'CD', '', NULL,
        '1、 下列说法错误的是（）\n\nA 反射可以获取类的构造器\n\nB 反射可获以Method,通过invoke进行方法的调用；\n\nC 反射可以获取注解（@Target为Runtime）信息；\n\nD 反射能够直接get(obj)获取私有的Field成员的值；\n\n答案：CD',
        NULL, 'MULTI_CHOICE', 0);
INSERT INTO `question`
VALUES (2,
        '下列程序执行结果说法正确的（）\npublic class Test {\n    public static void main(String[] args) {\n        List<String> list = new ArrayList<>();\n        list.add(\"str1\");\n        list.add(2, \"str2\");\n        String str = list.get(1);\n        System.out.println(str);\n    }\n}',
        'A 编译时出现异常；\n\nB 正确运行，输出str1;\n\nC 正确运行，输出str2;\n\nD 运行时出现异常\n\n', 'D', NULL, NULL,
        '2、 下列程序执行结果说法正确的（）\n\n1\n\npublic class Test {\n\n2\n\n3\n\npublic static void main(String[]args) {\n\n4\n\nList<String> list = new ArrayList<>();\n\n5\n\nlist.add(\"str1\");\n\n6\n\nlist.add(2,\"str2\");\n\n7\n\nString str = list.get(1);\n\n8\n\nSystem.out.println(str);\n\n9\n\n}\n\n10\n\n}\n\nA 编译时出现异常；\n\nB 正确运行，输出str1;\n\nC 正确运行，输出str2;\n\nD 运行时出现异常\n\n答案：D',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (3, '下边这段代码的输出结果为（）\nint fst = 5;\nint snd = 2;\nwhile (snd < fst--) {\n    snd++;\n}\nSystem.out.print(snd);',
        'A 5\n\nB 2\n\nC 3\n\nD 4\n\n', 'D', NULL, NULL,
        '3、 下边这段代码的输出结果为（）\n\n1\n\nint fst = 5;\n\n2\n\nint snd = 2;\n\n3\n\nwhile(snd < fst--) {\n\n4\n\nsnd++;\n\n5\n\n}\n\n6\n\nSystem.out.print(snd);\n\nA 5\n\nB 2\n\nC 3\n\nD 4\n\n答案：D',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (4,
        '下列程序的输出结果为（）（一旦匹配，立即顺序执行；包装类型也是可以接受的）\nint num = 2;\nswitch (num) {\n    case 1:\n        System.out.println(\"The input is 1\");\n    case 2:\n        System.out.println(\"The input is 2\");\n    case 3:\n        System.out.println(\"The input is 3\");\n    default:\n        System.out.println(\"Bad input\");\n}',
        'A The input is 2\n\n​The input is 3\n\nB The input is 1\n\nC The input is 2\n\nD The input is 2\n\n​The input is 3\n\n​Bad input\n\n',
        'D', NULL, NULL,
        '4、 下列程序的输出结果为（）（一旦匹配，立即顺序执行；包装类型也是可以接受的）\n\n1\n\nint num=2;\n\n2\n\nswitch(num) {\n\n3\n\ncase 1:\n\n4\n\nSystem.out.println(\"The input is 1\");\n\n5\n\ncase 2:\n\n6\n\nSystem.out.println(\"The input is 2\");\n\n7\n\ncase 3:\n\n8\n\nSystem.out.println(\"The input is 3\");\n\n9\n\ndefault :\n\n10\n\nSystem.out.println(\"Bad input\");\n\n11\n\n}\n\nA The input is 2\n\n​The input is 3\n\nB The input is 1\n\nC The input is 2\n\nD The input is 2\n\n​The input is 3\n\n​Bad input\n\n答案：D',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (5, '关于代码格式如下说法错误的是（）\n\n',
        'A 一个源文件按顺序包含版本、package、import、顶层、且用空行分隔；\n\nB 对于非空块和块状结构，左大括号放在行尾；\n\nC 空行不是代码，所以代码中多写几个空行没有关系；\n\nD 一个类或接口的声明部分应当按照类变、实例变量，构造器，方法的顺序出现，且用空行分隔；\n\n',
        'C', NULL, NULL,
        '5、 关于代码格式如下说法错误的是（）\n\nA 一个源文件按顺序包含版本、package、import、顶层、且用空行分隔；\n\nB 对于非空块和块状结构，左大括号放在行尾；\n\nC 空行不是代码，所以代码中多写几个空行没有关系；\n\nD 一个类或接口的声明部分应当按照类变、实例变量，构造器，方法的顺序出现，且用空行分隔；\n\n答案：C',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (6, '哪个异常可能会泄露文件系统结构信息（）\n\n',
        'A java.io.FileNotFountException\n\nB java.io.IOException\n\nC java.util.MissResourceException\n\nD java.sql.SQLException\n\n',
        'A', NULL, NULL,
        '6、 哪个异常可能会泄露文件系统结构信息（）\n\nA java.io.FileNotFountException\n\nB java.io.IOException\n\nC java.util.MissResourceException\n\nD java.sql.SQLException\n\n答案：A',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (7, '有关ORM的说法错误的是（）\n\n',
        'A ORM的缓存机制可以提高数据操作性能Hibernate没有缓存机制；\n\nB ORM依赖于JDBC和DataSource;\n\nC ORM有多种实现，主流的Mybatis与Hibernate;\n\nD ORM、对象关系转换，即数据库的单条数据与Java对应之间的映射；\n\n',
        'A', NULL, NULL,
        '7、 有关ORM的说法错误的是（）\n\nA ORM的缓存机制可以提高数据操作性能Hibernate没有缓存机制；\n\nB ORM依赖于JDBC和DataSource;\n\nC ORM有多种实现，主流的Mybatis与Hibernate;\n\nD ORM、对象关系转换，即数据库的单条数据与Java对应之间的映射；\n\n答案：A',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (8, '下列对于Stream的操作错误的是：',
        'A final Stream<String> stream = Steam.of(\"Red\",\"Blue\",\"Green\");\nList<String> colors = stream.collection(Collector.toList());\nB IntStream stream IntStream.of(10,20,30,40,50);\nC long count = Stream.of().count();\nD final Stream<String> stream = Stream.of(\"Red\",\"Blue\",\"Green\");\nSet<String> colors = Stream.toSet();（根本就没有你的这种用法）',
        'D', NULL, NULL,
        '8、 下列对于Stream的操作错误的是：\n\n1\n\nA final Stream<String> stream = Steam.of(\"Red\",\"Blue\",\"Green\");\n\n2\n\nList<String> colors = stream.collection(Collector.toList());\n\n3\n\nB IntStream stream IntStream.of(10,20,30,40,50);\n\n4\n\nC long count = Stream.of().count();\n\n5\n\nD final Stream<String> stream = Stream.of(\"Red\",\"Blue\",\"Green\");\n\n6\n\nSet<String> colors = Stream.toSet();（根本就没有你的这种用法）\n\n答案：D',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (9, '下列关于Thread类提供的线程控制方法的说法中，错误的是（）\n\n',
        'A currentThread()方法返回当前线程的引用\n\nB 线程A通过调用interrupt()方法来中断其阻塞状态\n\nC 线程A中执行线程B的join()方法，则线程A等待直到B执行完成\n\nD 若线程A调用方法isAlive()返回值为false，则说明A正在执行中，也可能是可运行状态；\n\nisAlive为ture的时候，才是就绪态或运行态。（完全矛盾的判断啊）\n\n',
        'D', NULL, NULL,
        '9、 下列关于Thread类提供的线程控制方法的说法中，错误的是（）\n\nA currentThread()方法返回当前线程的引用\n\nB 线程A通过调用interrupt()方法来中断其阻塞状态\n\nC 线程A中执行线程B的join()方法，则线程A等待直到B执行完成\n\nD 若线程A调用方法isAlive()返回值为false，则说明A正在执行中，也可能是可运行状态；\n\nisAlive为ture的时候，才是就绪态或运行态。（完全矛盾的判断啊）\n\n答案：D',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (10, '某业务会在运行过程中在linux系统中创建转储文件，当文件数量达到预定阈值时会将最老的文件删除，该业务在某些场下会读取转储文件，下列说法错误的时（）\n\n',
        'A 创建转储文件时应当限制文件大小，不能创建超过业务进程承载能力的大文件\n\nB 转储文件中如果有敏感数据，则必须进行匿名化处理，或者是对转储文件进行签名和加密\n\nC 转储文件时如果会生成临时文件，需要保证在使用完毕后立即删除；\n\nD 结合业务分析，该场景下的转储文件需要支持当前业务进行读写，所以转储文件的权限最好配置为640（看来权限是给高了）\n\n',
        'D', NULL, NULL,
        '10、某业务会在运行过程中在linux系统中创建转储文件，当文件数量达到预定阈值时会将最老的文件删除，该业务在某些场下会读取转储文件，下列说法错误的时（）\n\nA 创建转储文件时应当限制文件大小，不能创建超过业务进程承载能力的大文件\n\nB 转储文件中如果有敏感数据，则必须进行匿名化处理，或者是对转储文件进行签名和加密\n\nC 转储文件时如果会生成临时文件，需要保证在使用完毕后立即删除；\n\nD 结合业务分析，该场景下的转储文件需要支持当前业务进行读写，所以转储文件的权限最好配置为640（看来权限是给高了）\n\n答案：D',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (11, '若一个实现了Serializable接口的类中包含有敏感信息字段，为了防止该类对象被序序列化时导致敏感信息泄露，可以使用下面哪个关键字（）\n\n',
        'A private\n\nB static\n\nC volatile\n\nD transient\n\n', 'D', NULL, NULL,
        '11、若一个实现了Serializable接口的类中包含有敏感信息字段，为了防止该类对象被序序列化时导致敏感信息泄露，可以使用下面哪个关键字（）\n\nA private\n\nB static\n\nC volatile\n\nD transient\n\n答案：D',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (12, '下列哪些行为符合安全编码规范\n\n',
        'A 某产品在为了方便问题定位，在某些异常场景下，将无法处理的数据中的用户的电话，邮箱等用户标识信息打印在了日志汇中。\n\nB 某产品在数据库中存储了用户口令的哈希值，使用了SHA256哈希函数和安全随机数生成的4字节盐值（生日判定）\n\nC 某产品的业务需要使用加密算法，默认密钥直接在代码中写死，但是产品本身提供了替换加密密钥的能力\n\nD 某产品在有一个场景下由于传输的数据本身不是敏感数据并且数据不会发到信任边界外，所以两个服务在传输这些数据时使用了普通的套接字而未使用安全的套接字\n\n',
        'D', NULL, NULL,
        '12、下列哪些行为符合安全编码规范\n\nA 某产品在为了方便问题定位，在某些异常场景下，将无法处理的数据中的用户的电话，邮箱等用户标识信息打印在了日志汇中。\n\nB 某产品在数据库中存储了用户口令的哈希值，使用了SHA256哈希函数和安全随机数生成的4字节盐值（生日判定）\n\nC 某产品的业务需要使用加密算法，默认密钥直接在代码中写死，但是产品本身提供了替换加密密钥的能力\n\nD 某产品在有一个场景下由于传输的数据本身不是敏感数据并且数据不会发到信任边界外，所以两个服务在传输这些数据时使用了普通的套接字而未使用安全的套接字\n\n答案：D',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (13, '的基本类型的int在不同的操作系统平台的字长是\n\n',
        'A 32位（只能记住）\n\nB 64位\n\nC 16位\n\nD 在32位系统上是32位，在64位系统上是64位 //long类型在不同的操作系统才有区别\n\n', 'A', NULL, NULL,
        '13、Java的基本类型的int在不同的操作系统平台的字长是\n\nA 32位（只能记住）\n\nB 64位\n\nC 16位\n\nD 在32位系统上是32位，在64位系统上是64位 //long类型在不同的操作系统才有区别\n\n答案：A',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (14, '下列赋值表达式不会报错的是（）\n\n',
        'A boolean isStop = “true”;\n\nB float fit = 3.1; // float fit = 3.1f;\n\nC int num = 1.0;\n\nD char ch = 1;（char可以容纳的数字范围是多少）\n\n',
        'D', NULL, NULL,
        '14、下列赋值表达式不会报错的是（）\n\nA boolean isStop = “true”;\n\nB float fit = 3.1; // float fit = 3.1f;\n\nC int num = 1.0;\n\nD char ch = 1;（char可以容纳的数字范围是多少）\n\n答案：D',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (15, '如下代码片段，S1的结果是哪项()\nString str = \"123\";\nString s2 = st1 + 456;\n\n',
        'A 编译错误\n\nB 123456\n\nC 运行时抛异常\n\nD 579\n\n', 'B', NULL, NULL,
        '15、如下代码片段，S1的结果是哪项()\n\n1\n\nString str = \"123\";\n\n2\n\nString s2 = st1 + 456;\n\nA 编译错误\n\nB 123456\n\nC 运行时抛异常\n\nD 579\n\n答案：B',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (16,
        '编译并运行如下Java程序，将输出（）\npublic static void main(String[] args) {\n    try {\n        int num1 = 2;\n        int num2 = 0;\n        int result = num1 / num2;\n        System.out.println(result);\n    } catch (ArrayIndexOutOfBoundsException e) {\n        System.out.println(\"1\");\n    } catch (NumberFormatException e) {//（数字格式报错）\n        System.out.println(\"2\");\n    } catch (Exception e) {\n        System.out.println(\"3\");\n    } finally {\n        System.out.println(\"4\");\n    }\n    System.out.println(\"5\");\n}',
        'A 345\n\n​B 134\n\n​C 2345\n\n​D 1345\n\n', 'A', NULL, NULL,
        '16、编译并运行如下Java程序，将输出（）\n\n1\n\npublic static void main(String[] args) {\n\n2\n\ntry {\n\n3\n\nint num1 = 2;\n\n4\n\nint num2 = 0;\n\n5\n\nint result = num1 / num2;\n\n6\n\nSystem.out.println(result);\n\n7\n\n} catch (ArrayIndexOutOfBoundsException e) {\n\n8\n\nSystem.out.println(\"1\");\n\n9\n\n} catch (NumberFormatException e) {（数字格式报错）\n\n10\n\nSystem.out.println(\"2\");\n\n11\n\n} catch (Exception e) {\n\n12\n\nSystem.out.println(\"3\");\n\n13\n\n} finally {\n\n14\n\nSystem.out.println(\"4\");\n\n15\n\n}\n\n16\n\nSystem.out.println(\"5\");\n\n17\n\n}\n\n​ A 345\n\n​B 134\n\n​C 2345\n\n​D 1345\n\n答案：A',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (17, '在JAVA的异常处理中，用户自定义的异常类一般应该是（）的子类',
        '\n\nA Error\n\nB Exception\n\nC RuntimeException\n\nD Throwable\n\n（UnkownTypeException，这种错误以前从没有注意过）\n\n',
        'B', NULL, NULL,
        '17、在JAVA的异常处理中，用户自定义的异常类一般应该是（）的子类\n\nA Error\n\nB Exception\n\nC RuntimeException\n\nD Throwable\n\n（UnkownTypeException，这种错误以前从没有注意过）\n\n答案：B',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (18, '集合API中的Set接口的特点是哪些？', '\n\nA 允许重复元素，元素无顺序\n\nB 允许重复无素，元素有顺序\n\nC 不允许重复元素，元素有顺序\n\nD 不允许重复元素，元素无顺序\n\n',
        'D', NULL, NULL,
        '18、集合API中的Set接口的特点是哪些？\n\nA 允许重复元素，元素无顺序\n\nB 允许重复无素，元素有顺序\n\nC 不允许重复元素，元素有顺序\n\nD 不允许重复元素，元素无顺序\n\n答案：D',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (19, '下列操作有关Map操作错误的是：',
        'A\nMap<Integer, String> cityMap = new HashMap<Integer, String>() {\n    {\n        put(1, \"Nanjing\");\n        put(2, \"Beijing\");\n        put(3, \"Shanghai\");\n    }\n};//（这里应该会实现装包机制）\n\nB\nfor (Map.Entry<Integer, String> city : cityMap.entrySet()) {\n    System.out.println(city.getValue());\n}\n\nC\nMap<Integer, String> cityMap = new HashMap<>();\ncityMap.put(4,null);//（我记得有些Map是不允许放入null的）\n\nD\nMap<Integer, String> unmodifiableMap = Collections.unmodifiableMap(cityMap);//（这里面的map都是不可以修改的，不可以修改的原因是什么了？）\nunmodifiableMap.clear();//（看过了你的方法，真的是无耻）',
        'D', NULL, NULL,
        '19、下列操作有关Map操作错误的是：\n\nA\n\n1\n\nMap<Integer, String> cityMap = new HashMap<>() {\n\n2\n\n{\n\n3\n\nput(1, \"Nanjing”);\n\n4\n\nput(2, \"Beijing”);\n\n5\n\nput(3, \"Shanghai”);\n\n6\n\n}\n\n7\n\n}（这里应该会实现装包机制）ﾷn\nB\n\n1\n\nfor (Map.Entry<Integer, String> city : cityMap.entrySet()) {\n\n2\n\nSystem.out.println(city.getValue());\n\n3\n\n}\n\nC\n\n1\n\nMap<Integer, String> cityMap = new HashMap<>();\n\n2\n\ncityMap.put(4, null);（我记得有些Map是不允许放入null的）\n\nD\n\n1\n\nMap<Integer, String> unmodifiableMap = Collections.unmodifiableMap(cityMap);（这里面的map都是不可以修改的，不可以修改的原因是什么了？）\n\n2\n\nunmodifiableMap.clear();（看过了你的方法，真的是无耻）\n\n答案：D',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (20, '有关泛型，下面说法错误的是：\n\n',
        'A extends约束类型上限，如public int add (T n1, T n2); 表示方法参数必须是Number的子类型；（难道这个是通过返回值，来设置了必须是Number这种类型的吗，看来这是一种特殊的声明方法）\n\nB List numList = new ArrayList();\n\nList intList = new ArrayList();（赋值是不可能的，不过可以addAll）\n\n因为Integer是Number的子类，所以intList可以赋值给numberList（这题给的也太简洁了吧）\n\nC 对于同一个类，可以使用不同的泛型参数类型声明类型和方法；\n\nD 泛型定义时，一般使用E/T等大写字母表示泛化类型，这是类型的参考；当实例化时，使用具体的类型替代，这是实参\n\n',
        'B', NULL, NULL,
        '20、有关泛型，下面说法错误的是：\n\nA extends约束类型上限，如public int add (T n1, T n2); 表示方法参数必须是Number的子类型；（难道这个是通过返回值，来设置了必须是Number这种类型的吗，看来这是一种特殊的声明方法）\n\nB List numList = new ArrayList();\n\nList intList = new ArrayList();（赋值是不可能的，不过可以addAll）\n\n因为Integer是Number的子类，所以intList可以赋值给numberList（这题给的也太简洁了吧）\n\nC 对于同一个类，可以使用不同的泛型参数类型声明类型和方法；\n\nD 泛型定义时，一般使用E/T等大写字母表示泛化类型，这是类型的参考；当实例化时，使用具体的类型替代，这是实参\n\n答案：B',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (21, '关于synchronized的叙述错误的是()\n\n',
        'A 占用锁的线程在调用wait()后，会自动释放线程占有的锁\n\nB sychronized是JVM层面控制线程同步（这个真不知道，难道这个锁住的逻辑，还有在很多的层面实现的吗）\n\nC 占用锁的线程在发生异常，会自动释放线程占用的锁（发生异常会自动释放）\n\nD synchronized可用于处理读写互斥，读读不互斥的操作场景（啥玩意都互斥）\n\n',
        'D', NULL, NULL,
        '21、关于synchronized的叙述错误的是()\n\nA 占用锁的线程在调用wait()后，会自动释放线程占有的锁\n\nB sychronized是JVM层面控制线程同步（这个真不知道，难道这个锁住的逻辑，还有在很多的层面实现的吗）\n\nC 占用锁的线程在发生异常，会自动释放线程占用的锁（发生异常会自动释放）\n\nD synchronized可用于处理读写互斥，读读不互斥的操作场景（啥玩意都互斥）\n\n答案：D',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (22,
        '下面的程序创建了一个文件输出流对象，用来向向文件test.txt中输出数据。假设程序当前运行目录下不存在文件test.txt（自动重建），编译后执行结果为（）（编译后的结果怎么控制呢）\nimport java.io.*;\npublic class Test {\n    public static void main(String[] args) {\n        try {\n            String str = \"ABCDE”;\n            byte[] bs = str.getBytes(StandardCharsets.UTF_8);\n            FileOutputStream file = new FileOutputStream(\"test.txt”, true);\n                file.write(bs);\n            file.close();\n        } catch (IOException e) {\n            System.out.println(e.toString());\n        }\n    }\n}//（你这个是什么样子的思考方法）',
        '\n\nA ABCABC\n\nB Test\n\nC ABCDEABCDEABCDE\n\nD ABCDE\n\n', 'D', NULL, NULL,
        '22、下面的程序创建了一个文件输出流对象，用来向向文件test.txt中输出数据。假设程序当前运行目录下不存在文件test.txt（自动重建），编译后执行结果为（）（编译后的结果怎么控制呢）\n\n1\n\nimport java.io.*;\n\n2\n\n3\n\npublic class Test {\n\n4\n\npublic static void main(String[] args) {\n\n5\n\ntry {\n\n6\n\nString str = \"ABCDE”;\n\n7\n\nbyte[] bs = str.getBytes(StandardCharsets.UTF_8);\n\n8\n\nFileOutputStream file = new FileOutputStream(\"test.txt”, true);\n\n9\n\nfile.write(bs);\n\n10\n\nfile.close();\n\n11\n\n} catch(IOException e) {\n\n12\n\nSystem.out.println(e.toString());\n\n13\n\n}\n\n14\n\n}\n\n15\n\n}（你这个是什么样子的思考方法）\n\nA ABCABC\n\nB Test\n\nC ABCDEABCDEABCDE\n\nD ABCDE\n\n答案：D',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (23, '非0整数的匹配，下列正则表达式正确的是\n\n', 'A ^[0-9]*$\n\nB ^(0|[1-9][0-9]*)$\n\nC ^[1-9][0-9]*$\n\nD (0|[1-9][0-9]*)\n\n',
        'C', NULL, NULL,
        '23、非0整数的匹配，下列正则表达式正确的是\n\nA ^[0-9]*$\n\nB ^(0|[1-9][0-9]*)$\n\nC ^[1-9][0-9]*$\n\nD (0|[1-9][0-9]*)\n\n答案：C',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (24, '有关类加载器的双亲委派模型说法错误的时（）\n\n',
        'A 类加载器之间是有层次结构\n\nB 加载不到类，会抛出ClassNotFoundException();\n\nC 如果一个类加载器收到了类加载请求，先检查自己能不能加载，如果不能，向父加载器申请；（类加载机制）\n\nD 如果一个类加载器收到了类加载请求，先看父加载器能不能加载，一直如此到顶端加载器，顶端类加载器可以加载，则返回，如果不行本类加载器加载（优先机制）\n\n',
        'C（自定义类加载器有什么用处呢）（双亲委托机制：\n\n简单来说就是加载一个类进内存，先从系统类加载器找，往上从扩展类中找，往上再从根加载器中找）（可以随心所欲的进行安全校验）（实例加载的时候，就会以子类开始了）',
        NULL, NULL,
        '24、 有关类加载器的双亲委派模型说法错误的时（）\n\nA 类加载器之间是有层次结构\n\nB 加载不到类，会抛出ClassNotFoundException();\n\nC 如果一个类加载器收到了类加载请求，先检查自己能不能加载，如果不能，向父加载器申请；（类加载机制）\n\nD 如果一个类加载器收到了类加载请求，先看父加载器能不能加载，一直如此到顶端加载器，顶端类加载器可以加载，则返回，如果不行本类加载器加载（优先机制）\n\n答案：C（自定义类加载器有什么用处呢）（双亲委托机制：\n\n简单来说就是加载一个类进内存，先从系统类加载器找，往上从扩展类中找，往上再从根加载器中找）（可以随心所欲的进行安全校验）（实例加载的时候，就会以子类开始了）',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (25, '对于PreparedStatement的setInt(inti dx,int val)方法的功能，描述正确的是（）\n\n',
        'A 使得第idx个参数的值设为val（这个还是死记硬背吧，和我们平常理解的不一样的）\n\nB 使得第idx-1个参数的值设为val\n\nC 使得第val-1个参数的值设为idx\n\nD 使得第val个参数的值设为idx\n\n',
        'A', NULL, NULL,
        '25、对于PreparedStatement的setInt(inti dx,int val)方法的功能，描述正确的是（）\n\nA 使得第idx个参数的值设为val（这个还是死记硬背吧，和我们平常理解的不一样的）\n\nB 使得第idx-1个参数的值设为val\n\nC 使得第val-1个参数的值设为idx\n\nD 使得第val个参数的值设为idx\n\n答案：A',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (26, '有关NIO Selector说法错误的是：\n\n',
        'A 可以设定Selector的监听事件，包括Connect/Accept/Read/Write;（看来机制介绍的还是很清楚的）\n\nB Selector需要与Channel配合使用，Selector是Channel的复用器；\n\nC Selector本身不是一个文件，不用Close（buffer里面属性使用都时在NIO的使用，在NIO）（capacity、position、limit）\n\nD Selector等事件就绪后，才会返回，避免了大量IO阻塞；\n\n',
        'C', NULL, NULL,
        '26、有关NIO Selector说法错误的是：\n\nA 可以设定Selector的监听事件，包括Connect/Accept/Read/Write;（看来机制介绍的还是很清楚的）\n\nB Selector需要与Channel配合使用，Selector是Channel的复用器；\n\nC Selector本身不是一个文件，不用Close（buffer里面属性使用都时在NIO的使用，在NIO）（capacity、position、limit）\n\nD Selector等事件就绪后，才会返回，避免了大量IO阻塞；\n\n答案：C',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (27, '下面锁用的正确的是：\n\n',
        'A\n\n1\n\nprivate int count = 0;\n\n2\n\nprivate final Integer lock = new Integer(count);\n\n3\n\npublic void doSomething() {\n\n4\n\nSynchronized (lock) {\n\n5\n\nCount++;\n\n6\n\n}\n\nB\n\n1\n\nprivate final String lock = \"LOCK”;\n\n2\n\npublic void doSomething() {\n\n3\n\nsynchronized (lock) {\n\n4\n\n//..\n\n5\n\n}\n\n6\n\n}\n\nC\n\n1\n\nBoolean isInitialized = Boolean.FALSE;（难道说Boolean.FALSE也不具备唯一性质吗）\n\n2\n\npublic void doSomething() {\n\n3\n\nsynchronized (isInitialized) {\n\n4\n\n//..\n\n5\n\n}\n\n6\n\n}\n\nD\n\n1\n\nprivate int count = 0;\n\n2\n\nPrivate final integer lock = count;锁必须不能是公共人可以获取的东西\n\n3\n\npublic void doSomething() {\n\n4\n\nsynchronized (lock) {\n\n5\n\nlock++;\n\n6\n\n}\n\n7\n\n}（因为别的程序还要用）\n\n',
        'A', NULL, NULL,
        '27、下面锁用的正确的是：\n\nA\n\n1\n\nprivate int count = 0;\n\n2\n\nprivate final Integer lock = new Integer(count);\n\n3\n\npublic void doSomething() {\n\n4\n\nSynchronized (lock) {\n\n5\n\nCount++;\n\n6\n\n}\n\nB\n\n1\n\nprivate final String lock = \"LOCK”;\n\n2\n\npublic void doSomething() {\n\n3\n\nsynchronized (lock) {\n\n4\n\n//..\n\n5\n\n}\n\n6\n\n}\n\nC\n\n1\n\nBoolean isInitialized = Boolean.FALSE;（难道说Boolean.FALSE也不具备唯一性质吗）\n\n2\n\npublic void doSomething() {\n\n3\n\nsynchronized (isInitialized) {\n\n4\n\n//..\n\n5\n\n}\n\n6\n\n}\n\nD\n\n1\n\nprivate int count = 0;\n\n2\n\nPrivate final integer lock = count;锁必须不能是公共人可以获取的东西\n\n3\n\npublic void doSomething() {\n\n4\n\nsynchronized (lock) {\n\n5\n\nlock++;\n\n6\n\n}\n\n7\n\n}（因为别的程序还要用）\n\n答案：A',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (28, '以下命名风格正确的是：\n\n',
        'A enum Gender { male, femal}（形容词）\n\nB class Test {\n\n​private boolean isNotFount;\n\n}\n\nC class Test {\n\n​private String userName;\n\n}\n\nD class Test {\n\n​private static final int NUM_FIVE = 5;\n\n}\n\n',
        'C', NULL, NULL,
        '28、 以下命名风格正确的是：\n\nA enum Gender { male, femal}（形容词）\n\nB class Test {\n\n​private boolean isNotFount;\n\n}\n\nC class Test {\n\n​private String userName;\n\n}\n\nD class Test {\n\n​private static final int NUM_FIVE = 5;\n\n}\n\n答案：C',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (29,
        '如下代码执条结果是：\n\n1\n\npublic class Foo {\n\n2\n\npublic static void main(String[] args) {\n\n3\n\nfor (float flt = (float)1000000000;flt < 1000000010; flt++) {\n\n4\n\nSystem.out.println(flt);\n\n5\n\n}\n\n6\n\n}\n\n7\n\n}\n\n​',
        'A 1000000000\n\n​1000000001\n\n​1000000002\n\n​ ….\n\n​1000000010\n\n​B 1000000000.0\n\n​ C 输出结果不确定\n\n', 'C',
        NULL, NULL,
        '29、如下代码执条结果是：\n\n1\n\npublic class Foo {\n\n2\n\npublic static void main(String[] args) {\n\n3\n\nfor (float flt = (float)1000000000;flt < 1000000010; flt++) {\n\n4\n\nSystem.out.println(flt);\n\n5\n\n}\n\n6\n\n}\n\n7\n\n}\n\n​A 1000000000\n\n​1000000001\n\n​1000000002\n\n​ ….\n\n​1000000010\n\n​B 1000000000.0\n\n​ C 输出结果不确定\n\n答案：C',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (30,
        '以下代码片断输出的结果是：（Integer.valueOf()如果数值比较小，还是会复用之前的数据的，intern应该是重建一个integer）\n\n1\n\nPublic class Demo {\n\n2\n\nPublic static void main(String[] args) {\n\n3\n\nInteger fst = 1;\n\n4\n\nInteger snd = new Integer(1);\n\n5\n\nSystem.out.println(fst == snd);\n\n6\n\nSystem.out.println(new Integer(1) == snd);\n\n7\n\nSystem.out.println(fst == Integer.valueOf(1));\n\n8\n\nInteger trd = 256;\n\n9\n\nSystem.out.println(trd == Integer.valueOf(256));\n\n10\n\n}\n\n11\n\n}\n\n',
        'A false,false,true,false\n\nB false,false,true,true\n\nC false,false,false,false\n\nD true,false,false,false\n\n',
        'A', NULL, NULL,
        '30、以下代码片断输出的结果是：（Integer.valueOf()如果数值比较小，还是会复用之前的数据的，intern应该是重建一个integer）\n\n1\n\nPublic class Demo {\n\n2\n\nPublic static void main(String[] args) {\n\n3\n\nInteger fst = 1;\n\n4\n\nInteger snd = new Integer(1);\n\n5\n\nSystem.out.println(fst == snd);\n\n6\n\nSystem.out.println(new Integer(1) == snd);\n\n7\n\nSystem.out.println(fst == Integer.valueOf(1));\n\n8\n\nInteger trd = 256;\n\n9\n\nSystem.out.println(trd == Integer.valueOf(256));\n\n10\n\n}\n\n11\n\n}\n\nA false,false,true,false\n\nB false,false,true,true\n\nC false,false,false,false\n\nD true,false,false,false\n\n答案：A',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (31, '关于遮掩，说法不正确的是（其他）\n\n',
        'A 如果一个类或者一个包被遮掩了，那么不能通过其简单名引用到它，除非是这样一个上下文环境中，即语法只允许在其名字空间中出现一种名字\n\nB 遮掩是唯一一种两个名字位于不同的名字空间的名字重用形式（遮掩，不是变量名遮住了包名吗）\n\nC 一个变量不可以遮掩具有相同名字的一个类，即使它们都在同一个范围内；（不正确，但是只要你能控制命名空间也是可以的）\n\nD 如果这个名字被用于变量与类都被许可的范围，那么它将引用到变量上（优先使用变量）。\n\n',
        'C', NULL, NULL,
        '31、 关于遮掩，说法不正确的是（其他）\n\nA 如果一个类或者一个包被遮掩了，那么不能通过其简单名引用到它，除非是这样一个上下文环境中，即语法只允许在其名字空间中出现一种名字\n\nB 遮掩是唯一一种两个名字位于不同的名字空间的名字重用形式（遮掩，不是变量名遮住了包名吗）\n\nC 一个变量不可以遮掩具有相同名字的一个类，即使它们都在同一个范围内；（不正确，但是只要你能控制命名空间也是可以的）\n\nD 如果这个名字被用于变量与类都被许可的范围，那么它将引用到变量上（优先使用变量）。\n\n答案：C',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (32, '以下描述错误的是：\n\n',
        'A 禁止使用主动GC(除非在密码，RMI等方面)，尤其是在频繁/周期性的逻辑中\n\nB 将对象作为key存入hashMap后，可以对该对象的任意属性进行赋值操作（内存泄露）\n\nC 进行IO操作时，应该在try-with-resource或者finally里关闭资源\n\nD 可以在循环之外的节点主动GC（这个什么意思呢）\n\n',
        'B', NULL, NULL,
        '32、以下描述错误的是：\n\nA 禁止使用主动GC(除非在密码，RMI等方面)，尤其是在频繁/周期性的逻辑中\n\nB 将对象作为key存入hashMap后，可以对该对象的任意属性进行赋值操作（内存泄露）\n\nC 进行IO操作时，应该在try-with-resource或者finally里关闭资源\n\nD 可以在循环之外的节点主动GC（这个什么意思呢）\n\n答案：B',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (33, '根据安全编码规范，以下代码中正确的时（）（不能和操作耦合在一起去思考）\n\n',
        'A\n\n1\n\nassert (Patten.matches(\"[0-9A-Za-z@]+”, dir);\n\n2\n\nProcess proc = rt.exec(”cmd.exe /c \" + dir);\n\nB\n\n1\n\nArrayList<String> names;\n\n2\n\n//…\n\n3\n\nassert names.remove(null);\n\nC\n\n1\n\nassert index++ != MAX_LENGTH;  这里的自增操作\n\nD\n\n1\n\nboolean isNullsRemoved = names.remove(null);\n\n2\n\nassert isNullsRemoved // 所以每次都会出现这个情况啊\n\n',
        'D', NULL, NULL,
        '33、根据安全编码规范，以下代码中正确的时（）（不能和操作耦合在一起去思考）\n\nA\n\n1\n\nassert (Patten.matches(\"[0-9A-Za-z@]+”, dir);\n\n2\n\nProcess proc = rt.exec(”cmd.exe /c \" + dir);\n\nB\n\n1\n\nArrayList<String> names;\n\n2\n\n//…\n\n3\n\nassert names.remove(null);\n\nC\n\n1\n\nassert index++ != MAX_LENGTH;  这里的自增操作\n\nD\n\n1\n\nboolean isNullsRemoved = names.remove(null);\n\n2\n\nassert isNullsRemoved // 所以每次都会出现这个情况啊\n\n答案：D',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (34, '标识出垃圾后，需要回收，有关回收的说法错误是：\n\n',
        'A 复制copy后，即把内存区域分成两个等分，from区域与to区域，都从from区分内存，回收即是把from区域还在使用的内存，copy到to内存,….，比较消耗内存；（看来不同的路线，选择机制还是不一样的）\n\nB 压缩compact，重新整理达在使用的内存，一般做法是把还在使用的内存前移，填充回收空间，留下一大片连续的内存；压缩的问题是开销大；（这块需要反复计算才可以解决）\n\nC Java的GC机制会选择其中一种方法进行垃圾回收；（GC的回收过程中多种回收机制一起处理的结果）\n\nD 消除Sweep，直接清除，方法简单，但是会造成内存碎片，给再分配造成不可抑制的麻烦；（这个缺点是很明显的）\n\n',
        'C', NULL, NULL,
        '34、标识出垃圾后，需要回收，有关回收的说法错误是：\n\nA 复制copy后，即把内存区域分成两个等分，from区域与to区域，都从from区分内存，回收即是把from区域还在使用的内存，copy到to内存,….，比较消耗内存；（看来不同的路线，选择机制还是不一样的）\n\nB 压缩compact，重新整理达在使用的内存，一般做法是把还在使用的内存前移，填充回收空间，留下一大片连续的内存；压缩的问题是开销大；（这块需要反复计算才可以解决）\n\nC Java的GC机制会选择其中一种方法进行垃圾回收；（GC的回收过程中多种回收机制一起处理的结果）\n\nD 消除Sweep，直接清除，方法简单，但是会造成内存碎片，给再分配造成不可抑制的麻烦；（这个缺点是很明显的）\n\n答案：C',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (35, '执行如下语句，最终会运行什么文件？\n\nRuntime.getRuntime().exec(\"test.bat & notepad.exe\");（看来这个是需要懂OS的命令行机制）\n\n',
        'A 仅运行test.bat，并将notepad.exe作为test.bat的参数；\n\nB 仅运行notepad.exe\n\nC 仅运行test.bat\n\nD 运行test.bat和notepﾺﾷad.exe（这个是怎么判断的呢？）\n\n',
        'D', NULL, NULL,
        '35、执行如下语句，最终会运行什么文件？\n\nRuntime.getRuntime().exec(\"test.bat & notepad.exe\");（看来这个是需要懂OS的命令行机制）\n\nA 仅运行test.bat，并将notepad.exe作为test.bat的参数；\n\nB 仅运行notepad.exe\n\nC 仅运行test.bat\n\nD 运行test.bat和notepad.exe（这个是怎么判断的呢？）\n\n答案：D',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (36, '中如何释放掉一个指定占据的内存空间，请选择\n\n',
        'A 程序员无法明确强制垃圾回收器运行（这句话说的明确的）\n\nB 调用free()方法（我们无法控制释放那个内存空间）\n\nC 赋值给该对象的引用为null\n\nD 调用System.gc()的方法（）（选择后面最近的空闲时间而已）\n\n',
        'A', NULL, NULL,
        '36、Java中如何释放掉一个指定占据的内存空间，请选择\n\nA 程序员无法明确强制垃圾回收器运行（这句话说的明确的）\n\nB 调用free()方法（我们无法控制释放那个内存空间）\n\nC 赋值给该对象的引用为null\n\nD 调用System.gc()的方法（）（选择后面最近的空闲时间而已）\n\n答案：A',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (37, '类加载表述正确的是()\n\n',
        'A URLClassLoader的签名校验依赖jar包里的公钥，因此不能使用URLClassLoader来校验jar的合法性；（里面可能被人修改过，里面是底层的源码）\n\nB 在JVM中将不同的ClassLoader实例加载的同一个类视为相同的类；（看来不同的加载器生成的类也是不同的）\n\nC 开发者不可以自定义类加载器；\n\n',
        'A', NULL, NULL,
        '37、Java类加载表述正确的是()\n\nA URLClassLoader的签名校验依赖jar包里的公钥，因此不能使用URLClassLoader来校验jar的合法性；（里面可能被人修改过，里面是底层的源码）\n\nB 在JVM中将不同的ClassLoader实例加载的同一个类视为相同的类；（看来不同的加载器生成的类也是不同的）\n\nC 开发者不可以自定义类加载器；\n\n答案：A',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (38, '以下描述错误的是\n\n',
        'A\n\n1\n\npublic String getProductSummary(int index) {\n\n2\n\nreturn products[index];\n\n3\n\n}\n\n4\n\n//该代码中index未校验，可能相起数组越界访问\n\nB\n\n1\n\nString userName = \"name”;\n\n2\n\nResultSet rs = st.executeQuery(\"select * from user where name = ‘” + userName + \"’”);\n\n3\n\n//该代码可能会产生SQL注入漏洞（是不是里面的双引号起的作用）\n\nC\n\n1\n\nRuntime.getRuntime().exec(\"cmd.exe /c dir ” + args[0]);\n\n2\n\n//该代码可能会引起命令注入\n\nD\n\n1\n\nString command = System.getProPerty(\"command”);\n\n2\n\nRuntime.getRuntime().exec(\"command”);\n\n3\n\n//该代码可能会引起OS命令注入（这个和环境变量耦合在一起的使用命令）\n\n',
        'B', NULL, NULL,
        '38、以下描述错误的是\n\nA\n\n1\n\npublic String getProductSummary(int index) {\n\n2\n\nreturn products[index];\n\n3\n\n}\n\n4\n\n//该代码中index未校验，可能相起数组越界访问\n\nB\n\n1\n\nString userName = \"name”;\n\n2\n\nResultSet rs = st.executeQuery(\"select * from user where name = ‘” + userName + \"’”);\n\n3\n\n//该代码可能会产生SQL注入漏洞（是不是里面的双引号起的作用）\n\nC\n\n1\n\nRuntime.getRuntime().exec(\"cmd.exe /c dir ” + args[0]);\n\n2\n\n//该代码可能会引起命令注入\n\nD\n\n1\n\nString command = System.getProPerty(\"command”);\n\n2\n\nRuntime.getRuntime().exec(\"command”);\n\n3\n\n//该代码可能会引起OS命令注入（这个和环境变量耦合在一起的使用命令）\n\n答案：B',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (39, '以下代码可能导致命令注入的的有()\n\n',
        'A\n\n1\n\nString encodeIP = HWEncoder.encodeForOS(new WindowsCodec(), args[0]);\n\n2\n\nString cmd = \"cmd.exe /c ping \" + encodeIP;\n\nB\n\n1\n\nif (Pattern.matches(\"[0-9A-Za-z@]+”, dir)) {\n\n2\n\nProcess proc = rt.exec(cmd.exec /c \" + dir);\n\n3\n\n}\n\nC\n\n1\n\nFile dir = new File(args[0]);\n\n2\n\nif (!validate(dir)) {（对文件进行了检查）\n\n3\n\nSystem.out.println(\"An illegal directory”);\n\n4\n\n}\n\nD\n\n1\n\nProcessor proc = rt.exec(\"cmd.exe /c dir ” + args[0]);\n\n',
        'D', NULL, NULL,
        '39、以下代码可能导致命令注入的的有()\n\nA\n\n1\n\nString encodeIP = HWEncoder.encodeForOS(new WindowsCodec(), args[0]);\n\n2\n\nString cmd = \"cmd.exe /c ping \" + encodeIP;\n\nB\n\n1\n\nif (Pattern.matches(\"[0-9A-Za-z@]+”, dir)) {\n\n2\n\nProcess proc = rt.exec(cmd.exec /c \" + dir);\n\n3\n\n}\n\nC\n\n1\n\nFile dir = new File(args[0]);\n\n2\n\nif (!validate(dir)) {（对文件进行了检查）\n\n3\n\nSystem.out.println(\"An illegal directory”);\n\n4\n\n}\n\nD\n\n1\n\nProcessor proc = rt.exec(\"cmd.exe /c dir ” + args[0]);\n\n答案：D',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (40, '关于异常的说法错误的是\n\n',
        'A BindException异常泄露时可能造成开放端口列举\n\nB 当异常被传递到信任边界以外时，必须同时对敏感的异常消息和敏感的异常类型进行过滤\n\nC FileNotFoundException会透露文件系统的结构信息，使得攻击者可以不断传入伪造的路径名称来重现出底层文件系统结构；\n\nD 可以在代码最外层捕获NullPointException防止代码出现预期之外的行为\n\n',
        'D', NULL, NULL,
        '40、关于异常的说法错误的是\n\nA BindException异常泄露时可能造成开放端口列举\n\nB 当异常被传递到信任边界以外时，必须同时对敏感的异常消息和敏感的异常类型进行过滤\n\nC FileNotFoundException会透露文件系统的结构信息，使得攻击者可以不断传入伪造的路径名称来重现出底层文件系统结构；\n\nD 可以在代码最外层捕获NullPointException防止代码出现预期之外的行为\n\n答案：D',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (41, '下面关于异常处理的描述错误的是\n\n',
        'A FileNotFoundException、OutOfMemoryError、SQLException有可能会泄露敏感信息，但是JarException不属于敏感异常（这个也是敏感异常）（DOS攻击）\n\nB 对于调用开源三方件，三方件中抛出NullPointerException异常时，可以捕获NullPointerException，并对该异常进行处理\n\nC 输入校验是一个常用的防止通过异常泄露敏感信息的方式；\n\nD 必须做好日志的访问控制，防止日志被任意访问，导致信息泄露给非授权用户\n\n',
        'A', NULL, NULL,
        '41、下面关于异常处理的描述错误的是\n\nA FileNotFoundException、OutOfMemoryError、SQLException有可能会泄露敏感信息，但是JarException不属于敏感异常（这个也是敏感异常）（DOS攻击）\n\nB 对于调用开源三方件，三方件中抛出NullPointerException异常时，可以捕获NullPointerException，并对该异常进行处理\n\nC 输入校验是一个常用的防止通过异常泄露敏感信息的方式；\n\nD 必须做好日志的访问控制，防止日志被任意访问，导致信息泄露给非授权用户\n\n答案：A',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (42, '关于锁的说法错误的是\n\n',
        'A 封包过Integer对象不适合作为锁使用是因为在一段范围内相同的值会共享同一个实例\n\nB 使用new出来的Integer实例作为对象的内置锁可能导致死锁（new出来的好像没有什么问题）\n\nC 在Java虚拟机中，调用intern()方法的String类似一个全局变量，使用intern()方法返回的String做锁对象可能会导致死锁；（这个锁迟迟不能获取，被别人拿着导致的问题，这是它的临时变量区域的内存）\n\nD Boolean类型不适合作为锁使用，因为Boolean只有两个值：true和false，相同的值在Java虚拟机中共享同一个实例。（都是用的这两个）\n\n',
        'B', NULL, NULL,
        '42、关于锁的说法错误的是\n\nA 封包过Integer对象不适合作为锁使用是因为在一段范围内相同的值会共享同一个实例\n\nB 使用new出来的Integer实例作为对象的内置锁可能导致死锁（new出来的好像没有什么问题）\n\nC 在Java虚拟机中，调用intern()方法的String类似一个全局变量，使用intern()方法返回的String做锁对象可能会导致死锁；（这个锁迟迟不能获取，被别人拿着导致的问题，这是它的临时变量区域的内存）\n\nD Boolean类型不适合作为锁使用，因为Boolean只有两个值：true和false，相同的值在Java虚拟机中共享同一个实例。（都是用的这两个）\n\n答案：B',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (43, '状态变量不包括\n\n', 'A capacity：最大容量\n\nB flag：读写状态位\n\nC position：当前已经读到的字节数\n\nD limit：剩下的字节数（写入的时候奏效）\n\n',
        'B', NULL, NULL,
        '43、 Java IO Buffer状态变量不包括\n\nA capacity：最大容量\n\nB flag：读写状态位\n\nC position：当前已经读到的字节数\n\nD limit：剩下的字节数（写入的时候奏效）\n\n答案：B',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (44, '正则表达式\\[^',
        'A-Za-z0-9_\\]与以下哪个表达式等价\n\nA \\t\n\nB \\d\n\nC \\W = [^A-Za-z0-9_]（所以大W，都是去反的含义字母和数字）\n\nD \\v\n\nE \\w = [A-Za-z0-9_]\n\n',
        'C', NULL, NULL,
        '44、正则表达式\\[^A-Za-z0-9_\\]与以下哪个表达式等价\n\nA \\t\n\nB \\d\n\nC \\W = [^A-Za-z0-9_]（所以大W，都是去反的含义字母和数字）\n\nD \\v\n\nE \\w = [A-Za-z0-9_]\n\n答案：C',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (45, '关于sleep()和wait()，以下描述错误的一项是\n\n',
        'A sleep不释放对象锁，wait放弃对象锁；\n\nB sleep暂停线程，但监控状态仍然保持，结束后会自动恢复;\n\nC wait后进入等待锁定池，只有针对此对象发出notify()方法后获得对象锁进入运行状态；（准备获取对象锁进入运行状态，是没有获取锁，但是已经进入到了运行状态）\n\nD sleep是线程类（Thread）的方法，wait是Object类的方法（是正确的）\n\n',
        'C', NULL, NULL,
        '45、关于sleep()和wait()，以下描述错误的一项是\n\nA sleep不释放对象锁，wait放弃对象锁；\n\nB sleep暂停线程，但监控状态仍然保持，结束后会自动恢复;\n\nC wait后进入等待锁定池，只有针对此对象发出notify()方法后获得对象锁进入运行状态；（准备获取对象锁进入运行状态，是没有获取锁，但是已经进入到了运行状态）\n\nD sleep是线程类（Thread）的方法，wait是Object类的方法（是正确的）\n\n答案：C',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (46, '关于多线程并发如下说法正确的是\n\n',
        'A 对多个资源、数据库表、对象同时加锁，需要保持一致的加锁顺序，否则可能导致死锁（有道理）\n\nB 能用无锁数据结构，就不要用锁\n\nC 能用对象锁，就不要用类锁\n\nD 能锁区块，就不要锁方法体（尽可能的减少影响的方法）\n\n',
        'ABCD', NULL, NULL,
        '46、关于多线程并发如下说法正确的是\n\nA 对多个资源、数据库表、对象同时加锁，需要保持一致的加锁顺序，否则可能导致死锁（有道理）\n\nB 能用无锁数据结构，就不要用锁\n\nC 能用对象锁，就不要用类锁\n\nD 能锁区块，就不要锁方法体（尽可能的减少影响的方法）\n\n答案：ABCD',
        NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (47, '方法与相关联的ProcessBuilder.start()方法可以用来调用外部程序进程，这些外部程序运行时Process对象会产生哪些流（流也会被分别清空吗）（一会再次来解决这个）\n\n',
        'A 错误流\n\nB 监控流\n\nC 输出流\n\nD 输入流\n\n', 'ACD', NULL, NULL,
        '47、Runtime.exec()方法与相关联的ProcessBuilder.start()方法可以用来调用外部程序进程，这些外部程序运行时Process对象会产生哪些流（流也会被分别清空吗）（一会再次来解决这个）\n\nA 错误流\n\nB 监控流\n\nC 输出流\n\nD 输入流\n\n答案：ACD',
        NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (48, '属性from to保存的是敏感信息，则以下代码中序列化没有安全问题的是（）\n\n',
        'A.\n\n1\n\npublic class GpsLocation implements Serializable{\n\n2\n\nprivate double from;\n\n3\n\nprivate double to;\n\n4\n\nprivate String id; // non-sensitive field\n\n5\n\n// other content\n\n6\n\n}（完全裸露在外）\n\nB.\n\n1\n\npublic class GpsLocation implements Serializable{\n\n2\n\nprivate double from;\n\n3\n\nprivate double to;\n\n4\n\nprivate String id; // non-sensitive field\n\n5\n\n// other content\n\n6\n\nprivate static final ObjectStreamField[] serialPersistentFields = {new ObjectStreamField(\"id\", String.class)};\n\n7\n\n}（看来它认为from和to是敏感信息，明确了只能序列化的字段）\n\nC.\n\n1\n\npublic class GpsLocation implements Serializable{\n\n2\n\nprivate volatile double from;\n\n3\n\nprivate volatile double to;\n\n4\n\nprivate String id; // non-sensitive field\n\n5\n\n// other content\n\n6\n\n}\n\nD.\n\n1\n\npublic class GpsLocation implements Serializable{\n\n2\n\nprivate transient double from;\n\n3\n\nprivate transient double to;\n\n4\n\nprivate String id; // non-sensitive field\n\n5\n\n// other content\n\n6\n\n}\n\n',
        'BD', NULL, NULL,
        '48、属性from to保存的是敏感信息，则以下代码中序列化没有安全问题的是（）\n\nA.\n\n1\n\npublic class GpsLocation implements Serializable{\n\n2\n\nprivate double from;\n\n3\n\nprivate double to;\n\n4\n\nprivate String id; // non-sensitive field\n\n5\n\n// other content\n\n6\n\n}（完全裸露在外）\n\nB.\n\n1\n\npublic class GpsLocation implements Serializable{\n\n2\n\nprivate double from;\n\n3\n\nprivate double to;\n\n4\n\nprivate String id; // non-sensitive field\n\n5\n\n// other content\n\n6\n\nprivate static final ObjectStreamField[] serialPersistentFields = {new ObjectStreamField(\"id\", String.class)};\n\n7\n\n}（看来它认为from和to是敏感信息，明确了只能序列化的字段）\n\nC.\n\n1\n\npublic class GpsLocation implements Serializable{\n\n2\n\nprivate volatile double from;\n\n3\n\nprivate volatile double to;\n\n4\n\nprivate String id; // non-sensitive field\n\n5\n\n// other content\n\n6\n\n}\n\nD.\n\n1\n\npublic class GpsLocation implements Serializable{\n\n2\n\nprivate transient double from;\n\n3\n\nprivate transient double to;\n\n4\n\nprivate String id; // non-sensitive field\n\n5\n\n// other content\n\n6\n\n}\n\n答案：BD',
        NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (49, '下列单例实现正确的是\n\n',
        'A.\n\n1\n\npublic final class Helper{\n\n2\n\npublic Helper() { }\n\n3\n\n}\n\n4\n\nfinal class Foo{\n\n5\n\nprivate Helper helper = null;\n\n6\n\npublic Helper getHelper(){（这是双重锁机制带来的问题导致的）\n\n7\n\nif(helper ==null){()\n\n8\n\nsynchronized (this){\n\n9\n\nif(helper ==null){\n\n10\n\nhelper = new Helper();\n\n11\n\n}\n\n12\n\n}\n\n13\n\n}\n\n14\n\nreturn helper;\n\n15\n\n}\n\n16\n\n}\n\nB.\n\n1\n\npublic final class Helper {\n\n2\n\nprivate final int n;\n\n3\n\npublic Helper(int n) {\n\n4\n\nthis.n = n;\n\n5\n\n}\n\n6\n\n}\n\n7\n\nfinal class Foo {\n\n8\n\nprivate Helper helper = null;\n\n9\n\npublic Helper getHelper() {\n\n10\n\nHelper h =helper;\n\n11\n\nif (h == null) {\n\n12\n\nsynchronized (this) {\n\n13\n\nh=helper;（这个是什么含义呢）\n\n14\n\nif (h == null) {\n\n15\n\nh = new Helper(42);\n\n16\n\nhelper = h;\n\n17\n\n}\n\n18\n\n}\n\n19\n\n}\n\n20\n\nreturn h;\n\n21\n\n}\n\n22\n\n}\n\nC.\n\n1\n\npublic final class Helper {\n\n2\n\nprivate final int n;\n\n3\n\npublic Helper(int n) {\n\n4\n\nthis.n = n;\n\n5\n\n}\n\n6\n\n}\n\n7\n\nfinal class Foo {\n\n8\n\nprivate Helper helper = null;\n\n9\n\npublic Helper getHelper() {\n\n10\n\nif (helper == null) {\n\n11\n\nsynchronized (this) {\n\n12\n\nif (helper == null) {\n\n13\n\nhelper = new Helper(42);\n\n14\n\n}\n\n15\n\n}\n\n16\n\n}\n\n17\n\nreturn helper;\n\n18\n\n}\n\n19\n\n}\n\nD.\n\n1\n\npublic final class Helper {\n\n2\n\npublic Helper() {}\n\n3\n\n}\n\n4\n\nfinal class Foo {\n\n5\n\nprivate static class Holder{\n\n6\n\nstatic Helper helper = new Helper()（虽然不是懒加载机制，但是也是可行的）;\n\n7\n\n}\n\n8\n\npublic Helper getInstance(){\n\n9\n\nreturn Holder.helper;\n\n10\n\n}\n\n11\n\n}\n\n',
        'BD', NULL, NULL,
        '49、下列单例实现正确的是\n\nA.\n\n1\n\npublic final class Helper{\n\n2\n\npublic Helper() { }\n\n3\n\n}\n\n4\n\nfinal class Foo{\n\n5\n\nprivate Helper helper = null;\n\n6\n\npublic Helper getHelper(){（这是双重锁机制带来的问题导致的）\n\n7\n\nif(helper ==null){()\n\n8\n\nsynchronized (this){\n\n9\n\nif(helper ==null){\n\n10\n\nhelper = new Helper();\n\n11\n\n}\n\n12\n\n}\n\n13\n\n}\n\n14\n\nreturn helper;\n\n15\n\n}\n\n16\n\n}\n\nB.\n\n1\n\npublic final class Helper {\n\n2\n\nprivate final int n;\n\n3\n\npublic Helper(int n) {\n\n4\n\nthis.n = n;\n\n5\n\n}\n\n6\n\n}\n\n7\n\nfinal class Foo {\n\n8\n\nprivate Helper helper = null;\n\n9\n\npublic Helper getHelper() {\n\n10\n\nHelper h =helper;\n\n11\n\nif (h == null) {\n\n12\n\nsynchronized (this) {\n\n13\n\nh=helper;（这个是什么含义呢）\n\n14\n\nif (h == null) {\n\n15\n\nh = new Helper(42);\n\n16\n\nhelper = h;\n\n17\n\n}\n\n18\n\n}\n\n19\n\n}\n\n20\n\nreturn h;\n\n21\n\n}\n\n22\n\n}\n\nC.\n\n1\n\npublic final class Helper {\n\n2\n\nprivate final int n;\n\n3\n\npublic Helper(int n) {\n\n4\n\nthis.n = n;\n\n5\nﾺﾷn}\n\n6\n\n}\n\n7\n\nfinal class Foo {\n\n8\n\nprivate Helper helper = null;\n\n9\n\npublic Helper getHelper() {\n\n10\n\nif (helper == null) {\n\n11\n\nsynchronized (this) {\n\n12\n\nif (helper == null) {\n\n13\n\nhelper = new Helper(42);\n\n14\n\n}\n\n15\n\n}\n\n16\n\n}\n\n17\n\nreturn helper;\n\n18\n\n}\n\n19\n\n}\n\nD.\n\n1\n\npublic final class Helper {\n\n2\n\npublic Helper() {}\n\n3\n\n}\n\n4\n\nfinal class Foo {\n\n5\n\nprivate static class Holder{\n\n6\n\nstatic Helper helper = new Helper()（虽然不是懒加载机制，但是也是可行的）;\n\n7\n\n}\n\n8\n\npublic Helper getInstance(){\n\n9\n\nreturn Holder.helper;\n\n10\n\n}\n\n11\n\n}\n\n答案：BD',
        NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (50, '有关线程池关闭 说明正确的有\n\n',
        'A. 执行shutdownNow方法后，不能再往线程池中添加任务，线程池不会立即退出，指导线程池中等待的任务全部处理完\n\nB. 执行shutdown方法后，不能再往线程池中添加任务，线程池中之前提交的等待的任务不再执行，线程池立即退出\n\nC. 执行shutdown方法中，不能再往线程池中添加任务，线程池中等待的任务会继续被处理，线程池直到所有的任务处理完成才会退出\n\nD. 执行shutdownNow方法后，不能能再往线程池中添加任务，线程池视图停止所有正在执行的线程，不再处理池中等待的任务\n\n',
        'CD', NULL, NULL,
        '50、有关线程池关闭 说明正确的有\n\nA. 执行shutdownNow方法后，不能再往线程池中添加任务，线程池不会立即退出，指导线程池中等待的任务全部处理完\n\nB. 执行shutdown方法后，不能再往线程池中添加任务，线程池中之前提交的等待的任务不再执行，线程池立即退出\n\nC. 执行shutdown方法中，不能再往线程池中添加任务，线程池中等待的任务会继续被处理，线程池直到所有的任务处理完成才会退出\n\nD. 执行shutdownNow方法后，不能能再往线程池中添加任务，线程池视图停止所有正在执行的线程，不再处理池中等待的任务\n\n答案：CD',
        NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (51, '哪些是同步的？\n\n', 'A. TreeSet\n\nB. HashTable\n\nC. Vector\n\nD. LinkedList\n\n', 'BC', NULL, NULL,
        '51、哪些是同步的？\n\nA. TreeSet\n\nB. HashTable\n\nC. Vector\n\nD. LinkedList\n\n答案：BC', NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (52,
        '已知如下代码\n\n1\n\npublic static void main(String[] args) {\n\n2\n\nint nr = 5;\n\n3\n\ndo{\n\n4\n\nSystem.out.print(nr)\n\n5\n\n}while(--nr>5);\n\n6\n\nSystem.out.print(\"finished\");\n\n7\n\n}\n\n执行后的输出包含什么？\n\n',
        'A. 5\n\nB. 4\n\nC. finished\n\nD. 6\n\n', 'AC', NULL, NULL,
        '52、已知如下代码\n\n1\n\npublic static void main(String[] args) {\n\n2\n\nint nr = 5;\n\n3\n\ndo{\n\n4\n\nSystem.out.print(nr)\n\n5\n\n}while(--nr>5);\n\n6\n\nSystem.out.print(\"finished\");\n\n7\n\n}\n\n执行后的输出包含什么？\n\nA. 5\n\nB. 4\n\nC. finished\n\nD. 6\n\n答案：AC',
        NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (53, '正则表达式A*B可以匹配', '\n\nA. ACD\n\nB. AAB\n\nC. A\n\nD. AB\n\n', 'BD', NULL, NULL,
        '53、正则表达式A*B可以匹配\n\nA. ACD\n\nB. AAB\n\nC. A\n\nD. AB\n\n答案：BD', NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (54, '关于File的描述，正确的是?\n\n',
        'A. File实例 不能用于封装目录只用于封装文件\n\nB. 创建一个File类的实例将导致打开指定文件进行读写（按照它的意思，你不执行读写，是不会生效的）\n\nC. File实例封装了指定文件的信息\n\nD. File类位于jav.io包中（这个只能死记硬背）\n\n',
        'CD', NULL, NULL,
        '54、关于File的描述，正确的是?\n\nA. File实例 不能用于封装目录只用于封装文件\n\nB. 创建一个File类的实例将导致打开指定文件进行读写（按照它的意思，你不执行读写，是不会生效的）\n\nC. File实例封装了指定文件的信息\n\nD. File类位于jav.io包中（这个只能死记硬背）\n\n答案：CD',
        NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (55, '关于主动调用gc方法的描述，下列说法正确的是\n\n',
        'A. 在频率/周期性的逻辑中更要尽量 避免主动GC的调用\n\nB. 在GC过程中的某些阶段程序会完全停顿，这会让程序失去响应，对系统造成非常大的风险（说的有道理）\n\nC. 调用主动GC方法后，系统立即进行垃圾回收操作（系统也要找机会才行）\n\nD. 如果触发了JVM的全量GC操作，会增加gc的次数，也就增加了程序因为GC而停顿的时间\n\n',
        'ABD', NULL, NULL,
        '55、关于主动调用gc方法的描述，下列说法正确的是\n\nA. 在频率/周期性的逻辑中更要尽量 避免主动GC的调用\n\nB. 在GC过程中的某些阶段程序会完全停顿，这会让程序失去响应，对系统造成非常大的风险（说的有道理）\n\nC. 调用主动GC方法后，系统立即进行垃圾回收操作（系统也要找机会才行）\n\nD. 如果触发了JVM的全量GC操作，会增加gc的次数，也就增加了程序因为GC而停顿的时间\n\n答案：ABD',
        NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (56, '关于数据校验的说法正确的是（）\n\n',
        'A. 在对不可信数据进行校验时，禁止使用assert语句（）\n\nB. \"白名单\"方式净化的方式包括删除，编码 ，替换\n\nC. \"黑名单\"或\"负向\"校验，相对于正向校验，这是一种较弱的校验方式，如果不定期研究新的攻击方式并对校验的表达式进行日常更新 ，该校验方式就会很快过时\n\nD. 尽可能使用接收一直合法数据的白名单策略（这个我是记得的）\n\n',
        'ABCD', NULL, NULL,
        '56、关于数据校验的说法正确的是（）\n\nA. 在对不可信数据进行校验时，禁止使用assert语句（）\n\nB. \"白名单\"方式净化的方式包括删除，编码 ，替换\n\nC. \"黑名单\"或\"负向\"校验，相对于正向校验，这是一种较弱的校验方式，如果不定期研究新的攻击方式并对校验的表达式进行日常更新 ，该校验方式就会很快过时\n\nD. 尽可能使用接收一直合法数据的白名单策略（这个我是记得的）\n\n答案：ABCD',
        NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (57, '语言中，如果编写一个多线程程序，可以使用的方法是\n\n',
        'A. 扩展类Thread\n\nB. 实现Runnable接口（这个完全就是基本功）\n\nC. 实现接口Thread\n\nD. 扩展类Runnable\n\n', 'AB', NULL, NULL,
        '57、Java语言中，如果编写一个多线程程序，可以使用的方法是\n\nA. 扩展类Thread\n\nB. 实现Runnable接口（这个完全就是基本功）\n\nC. 实现接口Thread\n\nD. 扩展类Runnable\n\n答案：AB',
        NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (58, '仅保存口令hash，不加盐的缺陷有\n\n',
        'A. 攻击者可以使用实现计算好的哈希列表在几秒钟之内破解口令\n\nB. 加入盐值可以减慢hash的计算速度，减慢攻击者的速度，不加盐值，攻击者计算哈希的速度大大增加\n\nC. 没有盐值，攻击者可以根据哈希值反向解密出原始口令（hash不可逆）\n\nD. 由于\"生日判定\"，攻击者可以快速找到一个口令，尤其是当数据库中的口令数量加大的时候（难道是有什么规律吗）\n\n',
        'ABD', NULL, NULL,
        '58、仅保存口令hash，不加盐的缺陷有\n\nA. 攻击者可以使用实现计算好的哈希列表在几秒钟之内破解口令\n\nB. 加入盐值可以减慢hash的计算速度，减慢攻击者的速度，不加盐值，攻击者计算哈希的速度大大增加\n\nC. 没有盐值，攻击者可以根据哈希值反向解密出原始口令（hash不可逆）\n\nD. 由于\"生日判定\"，攻击者可以快速找到一个口令，尤其是当数据库中的口令数量加大的时候（难道是有什么规律吗）\n\n答案：ABD',
        NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (59, '类加载器说法正确的是：\n\n',
        'A. ExtensionClassLoader负责加载目录%JRE_HOME%/lib/ext目录下的jar包和类，或者java.ext.dirs系统变量所指定的路径下的jar包\n\nB. AppClassLoader负责加载当前应用classpath下的所有jar包和类\n\nC. BootstrapClassLoader负责加载%JAVA_HOME%/lib目录下的jar包和类或者或被-Xbootclasspath参数指定 的路径中的所有类\n\nD. BootstrapClassLoader/ExtensionClassLoader/AppClassLoader都继承自java.lang.ClassLoader\n\n',
        'ABC', NULL, NULL,
        '59、类加载器说法正确的是：\n\nA. ExtensionClassLoader负责加载目录%JRE_HOME%/lib/ext目录下的jar包和类，或者java.ext.dirs系统变量所指定的路径下的jar包\n\nB. AppClassLoader负责加载当前应用classpath下的所有jar包和类\n\nC. BootstrapClassLoader负责加载%JAVA_HOME%/lib目录下的jar包和类或者或被-Xbootclasspath参数指定 的路径中的所有类\n\nD. BootstrapClassLoader/ExtensionClassLoader/AppClassLoader都继承自java.lang.ClassLoader\n\n答案：ABC',
        NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (60, '关于异常，下列说法正确的是：\n\n',
        'A. 如果多种具体异常可以用同一个处理逻辑，可以通过捕获基类Exception来减少重复代码\n\nB. 方法抛出的异常，应该与本身的抽象层次相对应\n\nC. 对可容错处理的情况使用受检异常，对编程错误使用运行时异常\n\nD. 一个方法不应抛出超过5个异常，并在Javadoc的@Throws标签中年记录每个抛出的异常及其条件\n\n',
        'BCD', NULL, NULL,
        '60、关于异常，下列说法正确的是：\n\nA. 如果多种具体异常可以用同一个处理逻辑，可以通过捕获基类Exception来减少重复代码\n\nB. 方法抛出的异常，应该与本身的抽象层次相对应\n\nC. 对可容错处理的情况使用受检异常，对编程错误使用运行时异常\n\nD. 一个方法不应抛出超过5个异常，并在Javadoc的@Throws标签中年记录每个抛出的异常及其条件\n\n答案：BCD',
        NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (61, '栈帧的大小在什么时候确定的？\n\n', 'A. 程序代码编译时\nB. 类加载时\nC. 运行调用时\n', 'A，程序代码编译时确定。', NULL, NULL,
        '61.栈帧的大小在什么时候确定的？\n\nA. 程序代码编译时\nB. 类加载时\nC. 运行调用时\n答案：A，程序代码编译时确定。', NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (62, 'gc主要的回收的内存区域是哪块', 'A. 堆区\r\n\r\nB. 方法区', 'AB', NULL, NULL, 'A. 堆区\r\n\r\nB. 方法区', NULL, 'SINGLE_CHOICE',
        1);
INSERT INTO `question`
VALUES (63, '如下四种数组声明方式，哪种不正确？\n\n',
        'A int[] hello1 = {1,2,3,4};\nB int[] hello2 = new int[4] {1,2,3,4};\nC int[] hello3 = new int[] {1,2,3,4};\nD int[] hello4 = new int[4];\n\n',
        'B', NULL, NULL,
        '63.如下四种数组声明方式，哪种不正确？\n\nA int[] hello1 = {1,2,3,4};\nB int[] hello2 = new int[4] {1,2,3,4};\nC int[] hello3 = new int[] {1,2,3,4};\nD int[] hello4 = new int[4];\n\n答案：B',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (64,
        '哪些数据类型能直接输出？\n\na. int[] test = {1,2,3,4,5}\n\nb. List list = new LinkedList<>();\n\nc. Map<Integer,Integer> map = new HashMap<>();\n\nd. List list = new ',
        'ArrayList<>();\n\n', 'a是无法直接输出的System.out.println(Arrays.toString(test))才可以输出;', NULL, NULL,
        '65.哪些数据类型能直接输出？\n\na. int[] test = {1,2,3,4,5}\n\nb. List list = new LinkedList<>();\n\nc. Map<Integer,Integer> map = new HashMap<>();\n\nd. List list = new ArrayList<>();\n\n答案：a是无法直接输出的System.out.println(Arrays.toString(test))才可以输出;',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (65, '与表达式 Integer a = 2;等价的类型是哪个？\n\n',
        'A. int b = Integer.parseInt(“2”);\n\nB. Integer b = Integer.valueOf(“2”);\n\n', 'B', NULL, NULL,
        '66.与表达式 Integer a = 2;等价的类型是哪个？\n\nA. int b = Integer.parseInt(“2”);\n\nB. Integer b = Integer.valueOf(“2”);\n\n答案：B',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (66, '精度最高的数据类型？\n\n', 'A. int\nB. long\nC.BigInteger\nD.byte\n',
        'C\n\n和long型整数运算比，BigInteger不会有范围限制，但缺点是速度比较慢。', NULL, NULL,
        '70.精度最高的数据类型？\n\nA. int\nB. long\nC.BigInteger\nD.byte\n答案：C\n\n和long型整数运算比，BigInteger不会有范围限制，但缺点是速度比较慢。',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (67, '创建了几个对象？\n\n', 'A. 4个\n\nB. 1个\n\nC. 2个\n\nD.3个\n\n', 'B', NULL, NULL,
        '71.String str = “a” + “b” + “c” + “d”;创建了几个对象？\n\nA. 4个\n\nB. 1个\n\nC. 2个\n\nD.3个\n\n答案：B', NULL,
        'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (68, '下列代码示例中，加锁范围可能为全局而非当前类示例内的有（）？\n\n',
        'A. private final String lock = new String(“LOCK”).intern();\n\nB. private final String lock = “lock”\n\nC. private final String lock = new String(“LOCK”);\n\nD. private final Boolean = Boolean.TRUE;\n\npublic void doSomthing() {\n\nsynchronized(lock) {\n\n}\n\n}\n\n',
        'ABD', NULL, NULL,
        '74.下列代码示例中，加锁范围可能为全局而非当前类示例内的有（）？\n\nA. private final String lock = new String(“LOCK”).intern();\n\nB. private final String lock = “lock”\n\nC. private final String lock = new String(“LOCK”);\n\nD. private final Boolean = Boolean.TRUE;\n\npublic void doSomthing() {\n\nsynchronized(lock) {\n\n}\n\n}\n\n答案：ABD',
        NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (69, '以下异常列表哪些属于敏感异常（）？\n\n',
        'A. java.io.FileNotFoundException\n\nB. java.net.BindException\n\nC. java.util.ConcurrentModificationException\n\nD. java.sql.SQLException\n\nE. java.lang.NullPointerException\n\nF. java.lang.IllegalArgumentException\n\n',
        'ABCD', NULL, NULL,
        '77.以下异常列表哪些属于敏感异常（）？\n\nA. java.io.FileNotFoundException\n\nB. java.net.BindException\n\nC. java.util.ConcurrentModificationException\n\nD. java.sql.SQLException\n\nE. java.lang.NullPointerException\n\nF. java.lang.IllegalArgumentException\n\n答案：ABCD',
        NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (70, '下列哪个数据结构不是继承自集合Collection类？\n\n', 'A. List B. Set C. Queue D. Map\n\n', 'D', NULL, NULL,
        '78.下列哪个数据结构不是继承自集合Collection类？\n\nA. List B. Set C. Queue D. Map\n\n答案： D', NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (71,
        '不修改Map说的是什么，如下语句是否可以正确执行？ \nMap<Integer,String> test = new HashMap<>();\ntest.put(1,“hello”);\ntest.put(2,“unmodifiable”);\nMap<Integer,String> umap = Collections.unmodifiableMap(test);\numap.clear();\n',
        'A 正确\nB 错误\n', 'B', NULL, NULL,
        '79.不修改Map说的是什么，如下语句是否可以正确执行？ \nMap<Integer,String> test = new HashMap<>();\ntest.put(1,“hello”);\ntest.put(2,“unmodifiable”);\nMap<Integer,String> umap = Collections.unmodifiableMap(test);\numap.clear();\nA 正确\nB 错误\n答案：B',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (72, '单选）下列哪种情况可以终止当前线程的运行？\n\n', 'A. 当一个优先级高的线程进入就绪状态时\nB. 当该线程调用sleep()方法时\nC. 当创建一个新线程时\nD. 抛出一个异常时\n\n', 'D',
        NULL, NULL,
        '82.（单选）下列哪种情况可以终止当前线程的运行？\n\nA. 当一个优先级高的线程进入就绪状态时\nB. 当该线程调用sleep()方法时\nC. 当创建一个新线程时\nD. 抛出一个异常时\n\n答案：D',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (73, '哪个类写操作是线程安全的？\n\n', 'A.FileWriter\n\nB.RandomAccessFile\n\nC.FileOutputStream\n\nD.FileChannel\n\n', 'D',
        NULL, NULL,
        '83.哪个类写操作是线程安全的？\n\nA.FileWriter\n\nB.RandomAccessFile\n\nC.FileOutputStream\n\nD.FileChannel\n\n答案： D', NULL,
        'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (74, '以下NIO语句是否有错误？\n\n', 'A.大二进制文件读入\nB. 小二进制文件读入\nC. 小文本按行读入\nD. 小文本按字节数读入\nE. 结尾插入数据采用.APPEND而不是 .CREATE\n\n',
        'E', NULL, NULL,
        '84.以下NIO语句是否有错误？\n\nA.大二进制文件读入\nB. 小二进制文件读入\nC. 小文本按行读入\nD. 小文本按字节数读入\nE. 结尾插入数据采用.APPEND而不是 .CREATE\n\n答案：E',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (75, '关于DataSource的说法错误的是（）\n\n',
        'A． DataSource是用于获取数据库链接的接口。\n\nB． DataSource对象的属性不可以修改。\n\nC． DataSource主要有三种类型实现：基本实现、连接池实现、分布式事务实现。\n\nD． 通过DataSource对象访问的驱动程序本身不会向DriverManager注册。\n',
        'B', NULL, NULL,
        '85.关于DataSource的说法错误的是（）\n\nA． DataSource是用于获取数据库链接的接口。\n\nB． DataSource对象的属性不可以修改。\n\nC． DataSource主要有三种类型实现：基本实现、连接池实现、分布式事务实现。\n\nD． 通过DataSource对象访问的驱动程序本身不会向DriverManager注册。\n答案：B',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (76, '单选）如下操作属于中间结果的是（）\n\n',
        'A. reduce() -终端操作\n\nB. map() - 中间操作\n\nC. forEach() -终端操作\n\nD. stream() -创建初始stream，还未启动中间操作和最终终止操作\n\n',
        'B', NULL, NULL,
        '86.（单选）如下操作属于中间结果的是（）\n\nA. reduce() -终端操作\n\nB. map() - 中间操作\n\nC. forEach() -终端操作\n\nD. stream() -创建初始stream，还未启动中间操作和最终终止操作\n\n答案：B',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (77, '关于Optional说法正确的是？\n\n',
        'A. Optional可以被赋值为null\n\nB. Optional.of()可以用null做参数，返回Optional.empty()\n\nC. Optional.ofNullable(obj),obj不为null时直接调用Optional.of(obj)\n\nD. Optional.of()可以放置集合或对象。\n\n',
        'CD', NULL, NULL,
        '87.关于Optional说法正确的是？\n\nA. Optional可以被赋值为null\n\nB. Optional.of()可以用null做参数，返回Optional.empty()\n\nC. Optional.ofNullable(obj),obj不为null时直接调用Optional.of(obj)\n\nD. Optional.of()可以放置集合或对象。\n\n答案：CD',
        NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (78, '单选）Java8 中stream流的概念和使用问题。如下选项，哪个是对的（）\n\n',
        'A．stream 流的数据ﾷ源只能是数组、容器、文件\n\nB． stream 流跟迭代器一样，使用完再次使用时需要重新生成\n\nC. stream的map是中间结果???\n\nD. ???\n\n', 'B',
        NULL, NULL,
        '88.（单选）Java8 中stream流的概念和使用问题。如下选项，哪个是对的（）\n\nA．stream 流的数据源只能是数组、容器、文件\n\nB． stream 流跟迭代器一样，使用完再次使用时需要重新生成\n\nC. stream的map是中间结果???\n\nD. ???\n\n答案：B',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (79, '变量命名符合规范的有哪些？\n\n',
        'A. private boolean isNotFound;\n\nB. enum {male,female}\n\nC. private String userName;\n\nD. private static final int NUM_FIVE = 5;\n\n',
        'C', NULL, NULL,
        '89.变量命名符合规范的有哪些？\n\nA. private boolean isNotFound;\n\nB. enum {male,female}\n\nC. private String userName;\n\nD. private static final int NUM_FIVE = 5;\n\n答案：C',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (80, '下面字段声明中哪一个在interface主体内是合法的? （）\n\n',
        'A.private final static int answer = 42;\n\nB.public static int answer = 42;\n\nC.final static answer = 42;\n\nD.int answer;\n\n',
        'B', NULL, NULL,
        '91.下面字段声明中哪一个在interface主体内是合法的? （）\n\nA.private final static int answer = 42;\n\nB.public static int answer = 42;\n\nC.final static answer = 42;\n\nD.int answer;\n\n答案：B',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (81, '禁止采用如下哪些算法进行口令加密？\n\n', 'A. RSA\n\nB. DES\n\nC. SKIPJACK\n\nD.MD5\n\n',
        'BD，迷惑：SKIPJACK/RSA在1024位一下不推荐，DES和MD5绝对禁止，所以把答案从ABCD调整为BD', NULL, NULL,
        '92.禁止采用如下哪些算法进行口令加密？\n\nA. RSA\n\nB. DES\n\nC. SKIPJACK\n\nD.MD5\n\n答案：BD，迷惑：SKIPJACK/RSA在1024位一下不推荐，DES和MD5绝对禁止，所以把答案从ABCD调整为BD',
        NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (82, '常见敏感异常：(考了原题)\n\n',
        'A java.io.FileNotFoundException 泄露文件系统结构和文件名列举\n\nB java.util.jar.JarException 泄露文件系统结构\n\nC java.util.MissingResourceException 资源列举\n\nD java.security.acl.NotOwnerException 所有人列举\n\nE java.util.ConcurrentModificationException 可能提供线程不安全的代码信息\n\nF javax.naming.InsufficientResourcesException 服务器资源不足（可能有利于DoS攻击）\n\nG java.net.BindException 当不信任客户端能够选择服务器端口时造成开放端口列举\n\nH java.lang.OutOfMemoryError DoS\n\nI java.lang.StackOverflowError DoS\n\nO java.sql.SQLException 数据库结构，用户名列举\n',
        'ABCDEFGHIO', NULL, NULL,
        '94.常见敏感异常：(考了原题)\n\nA java.io.FileNotFoundException 泄露文件系统结构和文件名列举\n\nB java.util.jar.JarException 泄露文件系统结构\n\nC java.util.MissingResourceException 资源列举\n\nD java.security.acl.NotOwnerException 所有人列举\n\nE java.util.ConcurrentModificationException 可能提供线程不安全的代码信息\n\nF javax.naming.InsufficientResourcesException 服务器资源不足（可能有利于DoS攻击）\n\nG java.net.BindException 当不信任客户端能够选择服务器端口时造成开放端口列举\n\nH java.lang.OutOfMemoryError DoS\n\nI java.lang.StackOverflowError DoS\n\nO java.sql.SQLException 数据库结构，用户名列举\n答案：ABCDEFGHIO',
        NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (83, '不能被哪些修饰符修饰？\n\n', 'A: private\n\nB: public\n\nC: final\n\nD: abstract\n\n', 'AC', NULL, NULL,
        '95.Interface不能被哪些修饰符修饰？\n\nA: private\n\nB: public\n\nC: final\n\nD: abstract\n\n答案：AC', NULL, 'MULTI_CHOICE',
        1);
INSERT INTO `question`
VALUES (84, '正则匹配\"^[a-zA-Z0-9_]+@[(a-zA-Z)+.]+com$\"，哪些是匹配的？ \n\n',
        'A) abc@host.com\n\nB) abc_@host.com\n\nC) abc@host.org.com\n\nD) abc_@host+com\n\n', 'ABCD', NULL, NULL,
        '96.正则匹配\"^[a-zA-Z0-9_]+@[(a-zA-Z)+.]+com$\"，哪些是匹配的？ \n\nA) abc@host.com\n\nB) abc_@host.com\n\nC) abc@host.org.com\n\nD) abc_@host+com\n\n答案：ABCD',
        NULL, 'MULTI_CHOICE', 1);
INSERT INTO `question`
VALUES (85, '如下描述错误的是：\n\n',
        'A) StackOverflowError 是堆栈内存溢出\n\nB) OutOfMemoryError：Perm Gen 是老年代内存溢出\n\nC) Java Heap Space溢出时，会导致所有线程暂停工作\n\n',
        'B', NULL, NULL,
        '97.如下描述错误的是：\n\nA) StackOverflowError 是堆栈内存溢出\n\nB) OutOfMemoryError：Perm Gen 是老年代内存溢出\n\nC) Java Heap Space溢出时，会导致所有线程暂停工作\n\n答案：B',
        NULL, 'SINGLE_CHOICE', 1);
INSERT INTO `question`
VALUES (86, '76.能够产生DoS攻击的敏感异常有哪些（）？',
        'A. Java.lang.OutOfMemoryError\r\n\r\nB. Java.lang.StackOverflowError\r\n\r\nC. javax.naming.InsufficientResourcesException\r\n\r\nD. java.util.jar.JarException',
        'ABC', NULL, NULL,
        '76.能够产生DoS攻击的敏感异常有哪些（）？\r\n\r\nA. Java.lang.OutOfMemoryError\r\n\r\nB. Java.lang.StackOverflowError\r\n\r\nC. javax.naming.InsufficientResourcesException\r\n\r\nD. java.util.jar.JarException\r\n\r\n答案: ABC',
        NULL, 'SINGLE_CHOICE', 1);

SET
FOREIGN_KEY_CHECKS = 1;
