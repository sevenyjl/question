UPDATE question
SET doubtful=0
WHERE id = 1;
UPDATE question
SET doubtful=0
WHERE id = 1;
UPDATE question
SET doubtful=0
WHERE id = 81;
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`,
                                   `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`)
VALUES (844, '关于RandomAccessfile的说法错误的是？',
        'A 内部基于指针形式可以随机读写文件\r\nB 可以通过RandomAccessFile的FileChannel间进行mmap操作\r\nC RandomAccessFile继承InputStream和OutputStream\r\nD RandomAccessFile只能对文件进行操作\r\nE 支持r,rw,rws,rwd四种模式',
        'C', NULL, NULL,
        '关于RandomAccessfile的说法错误的是？ \r\nA 内部基于指针形式可以随机读写文件\r\nB 可以通过RandomAccessFile的FileChannel间进行mmap操作\r\nC RandomAccessFile继承InputStream和OutputStream\r\nD RandomAccessFile只能对文件进行操作\r\nE 支持r,rw,rws,rwd四种模式\r\n\r\n答案：C',
        '科目2', 'SINGLE_CHOICE', 1, 1, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`,
                                   `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`)
VALUES (846, '哪个类写操作是线程安全的？', 'A. FileWriter\nB. RandomAccessFile\nC. FileOutputStream\nD. FileChannel', 'D', '', NULL,
        NULL, '科目2', 'SINGLE_CHOICE', 1, 1, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`,
                                   `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`)
VALUES (847,
        '以下代码的执行结果\nchar alpha = \'A\';\nint foo = 65;\nboolean trueExp = true;\nSystem.out.println(trueExp ? alpha : 0);\nSystem.out.println(trueExp ? alpha : foo);',
        'A、A A\nB、65 65\nC、A 65\nD、65 A', 'C',
        '参考博客：https://blog.csdn.net/j080624/article/details/81836930\n这里涉及到三元运算的类型处理', NULL, NULL, NULL,
        'SINGLE_CHOICE', 1, 1, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`,
                                   `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`)
VALUES (848,
        '下面代码执行结果是？ \nTreeSet<Person> personSet = new TreeSet<>((o1, o2) -> o1.age - o2.age);\npersonSet.add(new Person(\"zhao\", 2));\npersonSet.add(new Person(\"qian\", 4));\npersonSet.add(new Person(\"sun\", 1));\npersonSet.add(new Person(\"li\", 4));\nSystem.out.println(personSet);',
        'A sun zhao li qian\nB sun zhao qian li\nC sun zhao qian\nD sun zhao li', 'C',
        '在TreeSet中加入比较器后，会通过比较器来排序即 比较字段即key字段', NULL, NULL, NULL, 'SINGLE_CHOICE', 1, 1, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`,
                                   `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`)
VALUES (849, '属于经过验证、安全的、公开的加密算法的是', 'A、AES的ECB模式\nB、RSA\nC、DSA/ECDSA\nD、加入盐值的SHA256\nE、DES', 'BCD',
        '安全编码规范规则 9.2 禁止使用私有或者弱加密算法，加密算法分为对称加密算法和非对称加密算法。\n推荐使用的对称加密算法有：AES\n推荐使用的非对称算法有：RSA\n推荐使用的数字签名算法有：DSA/ECDSA\n除了以上提到的几种算法之外，还经常使用安全哈希算法（SHA256）等来验证消息的完整性。如果使用哈希算法来存储口令，则必须加入盐值（salt）',
        NULL, NULL, NULL, 'MULTI_CHOICE', 1, 1, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`,
                                   `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`)
VALUES (850, '输入校验不可以防止以下哪种漏洞？', 'A. CSRF\nB. SQL注入\nC. XSS\nD. XML注入', 'AC',
        '有点问题，答案到底是？\nXSS和CRSF\n\nXSS：Cross-site scripting，它允许恶意用户将代码注入到网页上，其他用户在观看网页时就会受到影响。这类攻击通常包含了HTML以及用户端脚本语言。 具体分为反射型XSS和存储型XSS。\nCSRF: Cross-site request forgery跨站请求伪造，也被称为“One Click Attack”或者Session Riding，通常缩写为CSRF或者XSRF，是一种对网站的恶意利用。通俗的理解：攻击者盗用你的身份，以你的名义发送了恶意请求。\nXSS的防护\n输入校验\n输出编码\n为Cookie设置HttpOnly和Secure属性\nCRSF的防护\n验证HTTP头部的Referer字段\n在HTTP请求中添加Session Token\n要求用户输入验证码\n',
        NULL, NULL, NULL, 'MULTI_CHOICE', 1, 1, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`,
                                   `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`)
VALUES (851, '以下关于异常说法正确的是',
        'A、Throwable是所有Error或Exception的超类\nB、只有是Exception或Exception子类，才能被catch\nC、Error是正常的应用程序已无能为力的不应该试图捕获的严重问题，如OutOfMemoryError\nD、编译器会强制要求使用者捕获RuntimeException或申明抛出',
        'AC', '', NULL, NULL, NULL, 'MULTI_CHOICE', 1, 1, 0);
