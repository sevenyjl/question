update  `question` set doubtful='0';
update  `question` doubtful='1' where id<='843' and id>='258';
alter table question
    add error_times int default 0 comment '错误次数';

alter table question
    add right_times int default 0 comment '正确次数';

alter table question
    add doubted_times int default 0 null comment '存疑次数';

update  `question` set subject ='科目2' where id<='857' and id>='847';
