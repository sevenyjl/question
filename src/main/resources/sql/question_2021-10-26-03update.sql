update  `question` set doubtful='0';
update  `question` doubtful='1' where id<='843' and id>='258';
alter table question
    add error_times int default 0 comment '错误次数';

alter table question
    add right_times int default 0 comment '正确次数';

alter table question
    add doubted_times int default 0 null comment '存疑次数';

update  `question` set subject ='科目2' where id<='857' and id>='847';


UPDATE question  SET error_times=0,right_times=1,doubted_times=0  WHERE id=853;
UPDATE question  SET error_times=0,right_times=0,doubted_times=1  WHERE id=849;
UPDATE question  SET error_times=1,right_times=0,doubted_times=0  WHERE id=849;
UPDATE question  SET error_times=0,right_times=1,doubted_times=0  WHERE id=850;
UPDATE question  SET error_times=1,right_times=0,doubted_times=0  WHERE id=851;
UPDATE question  SET error_times=0,right_times=1,doubted_times=0  WHERE id=857;
UPDATE question  SET error_times=0,right_times=1,doubted_times=0  WHERE id=848;
UPDATE question  SET error_times=0,right_times=2,doubted_times=0  WHERE id=853;
UPDATE question  SET error_times=0,right_times=1,doubted_times=0  WHERE id=847;
UPDATE question  SET error_times=0,right_times=1,doubted_times=0  WHERE id=856;
UPDATE question  SET error_times=0,right_times=1,doubted_times=0  WHERE id=846;
UPDATE question  SET error_times=0,right_times=0,doubted_times=1  WHERE id=854;
UPDATE question  SET error_times=1,right_times=0,doubted_times=0  WHERE id=854;
UPDATE question  SET error_times=0,right_times=1,doubted_times=0  WHERE id=855;
UPDATE question  SET error_times=0,right_times=0,doubted_times=1  WHERE id=844;
UPDATE question  SET error_times=1,right_times=0,doubted_times=0  WHERE id=844;
UPDATE question  SET error_times=0,right_times=1,doubted_times=0  WHERE id=852;
UPDATE question  SET error_times=1,right_times=0,doubted_times=0  WHERE id=81;
UPDATE `question`.`question` SET `title` = '禁止采用如下哪些算法进行口令加密？\n\n', `options` = 'A. RSA\n\nB. DES\n\nC. SKIPJACK\n\nD.MD5\n\n', `answer` = 'BD', `parsing` = '迷惑：SKIPJACK/RSA在1024位一下不推荐，DES和MD5绝对禁止，所以把答案从ABCD调整为BD', `remark` = NULL, `original_information` = '92.禁止采用如下哪些算法进行口令加密？\n\nA. RSA\n\nB. DES\n\nC. SKIPJACK\n\nD.MD5\n\n答案：BD，迷惑：SKIPJACK/RSA在1024位一下不推荐，DES和MD5绝对禁止，所以把答案从ABCD调整为BD', `subject` = '科目2', `q_type` = 'MULTI_CHOICE', `hide_answer` = 1, `doubtful` = 0, `likeable` = 0, `error_times` = 0, `right_times` = 1, `doubted_times` = 0 WHERE `id` = 81;
