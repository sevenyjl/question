INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`,
                                   `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`)
VALUES (855,
        '以下代码中，可以被gc回收的对象有\nclass A {\n \n}\n \npublic class Test {\n    private static A staticA = new A();\n    public static final String CONSTANT = \"i am a string\";\n    public static void main(String[] args) {\n        A innerA = new A();\n    }\n}',
        'A、staticA\nB、CONSTANT\nC、“i am a string”\nD、innerA', 'ABCD', '', NULL, NULL, NULL, 'MULTI_CHOICE', 1, 1, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`,
                                   `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`)
VALUES (856, '栈帧的内部结构', 'A.动态链接\nB.局部变量表\nC.操作数栈\nD.方法返回地址', 'ABCD', '', NULL, NULL, NULL, 'MULTI_CHOICE', 1, 1, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`,
                                   `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`)
VALUES (857, '默认jvm参数运行时，会做哪些优化？',
        'A. JITTest.doubleIndex被内联\nB. JITTest.doubleIndex会被编译成机器码执行\nC. JITTest.sum会被编译成机器码执行\nD. 拆箱和装箱', 'ABC',
        '默认jvm参数时，jvm处在mixed模式运行，也就是部分代码解析执行，部分代码机器码执行', NULL, NULL, NULL, 'MULTI_CHOICE', 1, 1, 0);
UPDATE question
SET title='默认jvm参数运行时，会做哪些优化？',
    options='A. JITTest.doubleIndex被内联\nB. JITTest.doubleIndex会被编译成机器码执行\nC. JITTest.sum会被编译成机器码执行\nD. 拆箱和装箱',
    answer='ABC',
    parsing='默认jvm参数时，jvm处在mixed模式运行，也就是部分代码解析执行，部分代码机器码执行',
    q_type='MULTI_CHOICE',
    hide_answer=0,
    likeable=0,
    doubtful=0
WHERE id = 857;

