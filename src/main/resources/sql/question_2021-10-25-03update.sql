UPDATE question
SET title='以下异常列表哪些属于敏感异常（）？\n\n',
    options='A. java.io.FileNotFoundException\n\nB. java.net.BindException\n\nC. java.util.ConcurrentModificationException\n\nD. java.sql.SQLException\n\nE. java.lang.NullPointerException\n\nF. java.lang.IllegalArgumentException\n\n',
    answer='ABCD',
    parsing='',
    original_information='77.以下异常列表哪些属于敏感异常（）？\n\nA. java.io.FileNotFoundException\n\nB. java.net.BindException\n\nC. java.util.ConcurrentModificationException\n\nD. java.sql.SQLException\n\nE. java.lang.NullPointerException\n\nF. java.lang.IllegalArgumentException\n\n答案：ABCD',
    q_type='MULTI_CHOICE',
    hide_answer=0,
    likeable=0,
    doubtful=0
WHERE id = 69;
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`,
                                   `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`)
VALUES (852,
        '下面代码运行结果是？\n    public static void main(String[] args) {\n        try {\n            System.out.println(\"aa:\" + func());\n        } catch (Exception e) {\n            e.printStackTrace();\n        }\n    }\n    private static int func() throws Exception {\n        for (int i = 0; i < 1; i++) {\n            try {\n                throw new Exception(\"bb\");\n            } catch (Exception e) {\n                throw e;\n            } finally {\n                continue;\n            }\n        }\n        return 0;\n    }',
        'A、aa:0\nB、抛出异常\nC、编译错误\nD、既打印aa:0 同时抛出异常', 'A', '这里finally的continue使得catch中的throw e无效了', NULL, NULL, NULL,
        'SINGLE_CHOICE', 1, 1, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`,
                                   `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`)
VALUES (853,
        '关于下面代码中shutdown方法说法正确的是\npublic static void main(String[] args) throws Exception {\n    ExecutorService executorService = Executors.newFixedThreadPool(10);\n    for (int i = 0; i < 100; i++) {\n        executorService.submit(new Task());\n    }\n    executorService.shutdown();\n    static class Task extends Thread {\n        @Override\n        public void run() {\n        }\n    }\n}',
        'A， 线程池不再接收新的任务，队列中等待任务不会执行\nB， 线程池终止正在执行的线程\nC， 线程池终止正在执行的线程，和B差不多\nD， 线程池不再接收新的任务，队列中等待的任务会执行', 'D',
        'shutdown和shutdownnow区别？\n\n- shutdown()\n  - 将线程池状态置为SHUTDOWN,并不会立即停止\n  - 停止接收外部submit的任务\n  - 内部正在跑的任务和队列里等待的任务，会执行完\n- shutdownNow()\n  - 将线程池状态置为STOP。企图立即停止，事实上不一定：\n    - 跟shutdown()一样，先停止接收外部提交的任务\n    - 忽略队列里等待的任务\n    - 尝试将正在跑的任务interrupt中断\n    - 返回未执行的任务列表\n  - 它试图终止线程的方法是通过调用Thread.interrupt()方法来实现的，但这种方法的作用有限，如果线程中没有sleep 、wait、Condition、定时锁等应用, interrupt()方法是无法中断当前的线程的。所以，ShutdownNow()并不代表线程池就一定立即就能退出，它也可能必须要等待所有正在执行的任务都执行完成了才能退出。',
        NULL, NULL, NULL, 'SINGLE_CHOICE', 1, 1, 0);
INSERT INTO `question`.`question` (`id`, `title`, `options`, `answer`, `parsing`, `remark`, `original_information`,
                                   `subject`, `q_type`, `hide_answer`, `doubtful`, `likeable`)
VALUES (854, '以下哪些在接收到Thread',
        'A、Thread.sleep()\nB、java.net.Socket的阻塞方法\nC、java.nio.channels.SocketChannel的阻塞方法\nD、Thread.wait()', 'ACD', '',
        NULL, NULL, NULL, 'MULTI_CHOICE', 1, 1, 0);
