# 工程简介

# 延伸阅读

学习到了 42

# 待开发

-[ ] 导出导入功能

-[ ] 题型筛选

-[ ] 科目筛选

-[x] 答案隐藏

-[x] 题目解析
 
-[ ] 标记

-[ ] 错题集
 
-[x] 更新数据的sql记录
 
-[x] 存疑题
 
-[x] 收藏题

update question_重要备份 a,question b SET a.error_times=b.error_times,a.right_times=b.right_times,a.doubted_times=b.doubted_times  WHERE a.id=b.id;