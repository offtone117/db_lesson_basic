create table departments(
department_id int unsigned not null auto_increment primary key,
name varchar(20) not null,
created_at timestamp null default current_timestamp,
updated_at timestamp null default current_timestamp on update current_timestamp
);

alter table people add column department_id int unsigned null after email;

insert into departments (name)
values
('営業')
('開発')
('経理')
('人事')
('情報システム')

insert into people (name, email, age, gender, department_id) values
('佐藤太郎', 'sato.taro@gizumo.jp', 30, 1, 1),
('鈴木花子', 'suzuki.hanako@gizumo.jp', 28, 2, 1),
('高橋優斗', 'takahashi.yuto@gizumo.jp', 35, 1, 1),
('中村翔', 'nakamura.sho@gizumo.jp', 27, 1, 2),
('小林明日香', 'kobayashi.asuka@gizumo.jp', 29, 2, 2),
('林健太', 'hayashi.kenta@gizumo.jp', 31, 1, 2),
('加藤美咲', 'kato.misaki@gizumo.jp', 26, 2, 2),
('山本玲奈', 'yamamoto.rena@example.com', 33, 2, 3),
('井上誠', 'inoue.makoto@example.com', 32, 1, 4),
('渡辺理央', 'watanabe.rio@example.com', 25, 2, 5);

INSERT INTO reports (person_id, content)
VALUES
(7, '営業活動で新規顧客に提案を行いました。'),
(8, '問い合わせ対応を行い、商談日程を調整しました。'),
(9, '既存顧客へのフォローコールを実施しました。'),
(10, '開発中のAPI機能を改善しました。'),
(11, 'UIデザインの修正案をまとめました。'),
(12, 'バグ調査を行い原因を特定しました。'),
(13, '新機能のテストケースを作成しました。'),
(14, '経理処理で請求書のチェックをしました。'),
(15, '面接対応と社内調整を行いました。'),
(16,'PC設定作業とネットワーク整備を行いました。');

update people set department_id = 1 where department_id is null;

select name, age from people where gender = 1 order by age desc;

SELECT
  `name`, `email`, `age`
FROM
  `people`
WHERE
  `department_id` = 1
ORDER BY
  `created_at`;
peopleというテーブルからdepartment_idというカラムの値が1のレコードの
名前とメールアドレスと年齢を取得し、created_atの昇順で表示する。