
------------------------------------------ 샘플 데이터 입력------------------------------------

-- 관리자 입력
insert into worker values('admin', 'admin', '관리자', '010-7777-7777');
insert into worker values('scott', 'tiger', '홍길동', '010-6400-6068');

-- 회원 입력
insert into member(id, pwd, name, zip_num, address1, address2, phone, email) values
('one', '1111', '김나리', '133-110', '서울시 성동구 성수동1가' , '1번지21호', '017-777-7777','acc@abc.com');
insert into member(id, pwd, name, zip_num, address1, address2, phone, email)values
('two', '2222', '김길동', '130-120', '서울시 송파구 잠실2동', '리센츠 아파트 201동 505호','011-123-4567','acc@abc.com');


select * from worker;
select * from member;

-- 상품 입력
insert into product(pseq, name, kind, price1, price2, price3, content, image) 
values(product_seq.nextval, '크로그다일부츠', '2', 40000, 50000, 10000, '오리지날 크로그다일부츠 입니다.', 'w2.jpg');

insert into product(pseq, name, kind, price1, price2, price3, content, image, bestyn) 
values(product_seq.nextval, '롱부츠', '2', 40000, 50000, 10000, '따뜻한 롱부츠 입니다.', 'w-28.jpg', 'n');

insert into product(pseq,  name, kind, price1, price2, price3, content, image, bestyn) 
values(product_seq.nextval, '힐', '1', 10000, 12000, 2000, '여성용전용 힐', 'w-14.jpg', 'n');

insert into product(pseq,  name, kind, price1, price2, price3, content, image, bestyn)
values(product_seq.nextval, '슬리퍼', '4', 5000, 5500, 500, '편안한 슬리퍼입니다.', 'w-25.jpg', 'y');

insert into product(pseq,  name, kind, price1, price2, price3, content, image, bestyn)
values(product_seq.nextval, '회색힐', '1', 10000, 12000, 2000, '여성용전용 힐', 'w-23.jpg', 'n');

insert into product(pseq,  name, kind, price1, price2, price3, content, image) 
values(product_seq.nextval, '여성부츠', '2', 12000, 18000, 6000, '여성용 부츠', 'w4.jpg');

insert into product(pseq,  name, kind, price1, price2, price3, content, image, bestyn)
values(product_seq.nextval,  '핑크샌달', '3', 5000, 5500, 500, '사계절용 샌달입니다.', 'w-24.jpg', 'y');

insert into product(pseq,  name, kind, price1, price2, price3, content, image, bestyn)
values(product_seq.nextval, '슬리퍼', '3', 5000, 5500, 500, '편안한 슬리퍼입니다.', 'w11.jpg', 'y');

insert into product(pseq,  name, kind, price1, price2, price3, content, image) 
values( product_seq.nextval,  '스니커즈', '4', 15000, 20000, 5000, '활동성이 좋은 스니커즈입니다.', 'w-13.jpg');

insert into product(pseq,  name, kind, price1, price2, price3, content, image, bestyn)
values( product_seq.nextval,  '샌달', '3', 5000, 5500, 500,'사계절용 샌달입니다.', 'w-09.jpg','n');

insert into product(pseq,  name, kind, price1, price2, price3, content, image,bestyn)
values( product_seq.nextval,  '스니커즈', '5', 15000, 20000, 5000,'활동성이 좋은 스니커즈입니다.', 'w-05.jpg','n');

select * from product;


update product set bestyn=upper(bestyn);


-- 카트 추가
select * from cart;
insert into cart(cseq,id, pseq, quantity) values(cart_seq.nextval, 'one', 2, 1);   -- id:one 사용자가 1번 상품 1개를 카트에 추가
insert into cart(cseq,id, pseq, quantity) values(cart_seq.nextval, 'two', 3, 1); 


-- orders 와 order_detail 추가
select * from orders;
select * from order_detail;

insert into orders( oseq, id) values(orders_seq.nextVal, 'one');
insert into order_detail(odseq, oseq, pseq, quantity) values(order_detail_seq.nextval, 1, 2, 1);
insert into order_detail(odseq, oseq, pseq, quantity) values(order_detail_seq.nextval, 1, 3, 2);

insert into orders(oseq, id) values(orders_seq.nextval, 'two');
insert into order_detail(odseq, oseq, pseq, quantity) values(order_detail_seq.nextval, 2, 4, 3);
insert into order_detail(odseq, oseq, pseq, quantity) values(order_detail_seq.nextval, 2, 5, 2);

insert into orders(oseq, id) values(orders_seq.nextval, 'one');
insert into order_detail(odseq, oseq, pseq, quantity) values(order_detail_seq.nextval, 3, 3, 1);
insert into order_detail(odseq, oseq, pseq, quantity) values(order_detail_seq.nextval, 3, 2, 1);




-- Qna 추가
select * from qna;
insert into qna (qseq, subject, content, id) 
values(qna_seq.nextval, '배송관련 문의입니다', '현재 배송상태와 예상 배송일을 답변 부탁합니다', 'one');
insert into qna (qseq, subject, content, id) 
values(qna_seq.nextval, '환불관련', '환불절차 안내부탁드려요.... 배송사 선택은 어떻게 되는지도...', 'two');
insert into qna (qseq, subject, content, id) 
values(qna_seq.nextval, '사이즈 교환 하고 싶어요', '사이즈가 예상보다 작습니다. 교환절차를 안내부탁드려요', 'one');
insert into qna (qseq, subject, content, id) 
values(qna_seq.nextval, '배송이 많이 지연되고 있습니다', '언제 받을 수 있나요', 'two');
insert into qna (qseq, subject, content, id) 
values(qna_seq.nextval, '불량품 교환 문의', '교환 또는 환불 등의 안내가 필요합니다. 유선안내부탁드려요', 'one');






-- cart 안의 pseq로 상품이름과  그리고 id로 사용자 이름을 함꼐 조회하는  view를 생성합니다
create or replace view cart_view
as
select c.cseq, c.id, m.name as mname, c.pseq, p.name as pname, c.quantity, p.price2, c.result, c.indate
from cart c, product p, member m
where c.pseq = p.pseq and c.id = m.id;

select * from cart_view;





-- orders 와 order_detail 의 join 으로 
-- 1. 주문번호(oseq)에 따른 주문상품들의 표시 
-- 2. 상품번호에 따른 상품 이름과 가격 등의 정보 표시
-- 3. 아이디에 따른 고객 이름과 배송주소 등의 정보 표시

create or replace view order_view
as
select  d.odseq, o.oseq, o.indate, o.id, 
			m.name as mname, m.zip_num, m.address1, m.address2, m.phone,
			d.pseq, p.price2, d.quantity, d.result, p.name as pname
from orders o, order_detail d, member m, product p
where o.oseq=d.oseq and o.id=m.id and d.pseq=p.pseq;

select * from order_view;







-- 신상품  View 생성
create or replace view new_pro_view
as
select * from
( select rownum, pseq, name, price2, image from product  where useyn='Y'  order by indate desc )
where rownum <= 4;

select * from new_pro_view;


-- 베스트 상품 view 생성
create or replace view best_pro_view
as
select * from
(select rownum, pseq, name, price2, image from product  where bestyn='Y'  order by indate desc) 
where  rownum <=4;

select * from best_pro_view;




alter table address add dong varchar2(20);
select * from address
alter table address modify dong varchar2(50) not null;
delete from address;



select distinct oseq from 
(select * from order_view order by result asc, oseq desc)
where id='scott'

update order_detail set result='2' where oseq=24;
update order_detail set result='2' where oseq=25;


select oseq from( select distinct oseq, result from  (select * from order_view  where id='scott') 
order by result, oseq desc  );


select * from qna







