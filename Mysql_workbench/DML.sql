/*table inserts*/

/*Clients*/
insert into clients values('00000000001','Oscar Poblete Saenz', 'oscarps@email.com','+525512345678',1,'2000-11-07');
insert into clients values('00000000002','Julieta Rojas Garcia', 'julietarg@email.com','+525522345678',2,'2000-07-11');
insert into clients values('00000000003','Pedro Juarez Sanchez', 'pedrojs@email.com','+525532345678',1,'2000-01-02');
insert into clients values('00000000004','Juan Pineda Frias', 'juanpf@email.com','+525542345678',1,'2000-02-03');
insert into clients values('00000000005','Rodrigo Colio Vergara', 'rodrigocv@email.com','+525552345678',1,'2000-03-04');
insert into clients values('00000000006','Magdalena Fernandez Sanchez', 'magdalenafs@email.com','+525562345678',0,'2000-04-05');
insert into clients values('00000000007','Maria Jose Velasco Robles', 'mariajosevr@email.com','+525572345678',2,'2000-05-06');
insert into clients values('00000000008','Steven Rosas Chavez', 'stevenrc@email.com','+525582345678',0,'2000-06-07');
insert into clients values('00000000009','Barbaro Ferro Castro', 'barbarofc@email.com','+525592345678',1,'2000-07-08');
insert into clients values('00000000010','Diego Venegas Granados', 'diegovg@email.com','+525510345678',1,'2000-09-09');
insert into clients values('00000000011','Pablo Sanchez Garcia', 'pablosg@email.com','+525511345678',1,'2000-10-10');
insert into clients values('00000000012','Emilio Barragan Torres', 'emiliobt@email.com','+525512245678',1,'2000-11-11');
insert into clients values('00000000013','Martina Huesca Benitez', 'martinahb@email.com','+525513345678',9,'2000-12-12');
insert into clients values('00000000014','Aurelio Ibarra Cortes', 'aurelioic@email.com','+525514345678',1,'2000-01-01');
insert into clients values('00000000015','Guillermo Orozco Dominguez', 'guillermood@email.com','+525515345678',1,'2000-02-02');

/*Accounts*/
insert into accounts values('00000000001','123456789012345678',DEFAULT,DEFAULT,'1234'); /*Clients can have more than one account*/
insert into accounts values('00000000001','223456789012345678',DEFAULT,DEFAULT,'1222');
insert into accounts values('00000000002','133456789012345678',DEFAULT,DEFAULT,'1235'); /*Accounts can have many debit or credit cards*/
insert into accounts values('00000000002','233456789012345678',DEFAULT,DEFAULT,'1245');
insert into accounts values('00000000003','143456789012345678',DEFAULT,DEFAULT,'1236');
insert into accounts values('00000000004','153456789012345678',DEFAULT,0,'1237'); /*Some clients can get their accounts suspended and change the PIN for the new account*/
insert into accounts values('00000000004','253456789012345678',DEFAULT,DEFAULT,'1137');
insert into accounts values('00000000004','353456789012345678',DEFAULT,DEFAULT,'1127');
insert into accounts values('00000000005','163456789012345678',DEFAULT,DEFAULT,'1148');
insert into accounts values('00000000006','173456789012345678',DEFAULT,DEFAULT,'1239');
insert into accounts values('00000000007','183456789012345678',DEFAULT,0,'1210'); /*Some clients keep the same PIN*/
insert into accounts values('00000000007','283456789012345678',DEFAULT,DEFAULT,'1210'); 
insert into accounts values('00000000008','193456789012345678',DEFAULT,DEFAULT,'1211');
insert into accounts values('00000000009','110456789012345678',DEFAULT,DEFAULT,'1212');
insert into accounts values('00000000010','111456789012345678',DEFAULT,DEFAULT,'1213');
insert into accounts values('00000000011','112456789012345678',DEFAULT,0,'1214'); /*Other users deactivate their account to open another*/
insert into accounts values('00000000011','212456789012345678',DEFAULT,DEFAULT,'1249');
insert into accounts values('00000000011','312456789012345678',DEFAULT,DEFAULT,'1214');
insert into accounts values('00000000012','113456789012345678',DEFAULT,DEFAULT,'1215');
insert into accounts values('00000000013','114456789012345678',DEFAULT,DEFAULT,'1216');
insert into accounts values('00000000014','115456789012345678',DEFAULT,DEFAULT,'1217');
insert into accounts values('00000000015','116456789012345678',DEFAULT,DEFAULT,'1218');

/*Cards*/
insert into cards values('123456789012345678','1000000000000000','Debit','2026-01-02','123',10000.00); 
insert into cards values('133456789012345678','2000000000000000','Debit','2026-02-03','124',18000.00);
insert into cards values('143456789012345678','3000000000000000','Credit','2026-03-04','125',10000.00); 
insert into cards values('153456789012345678','4000000000000000','Debit','2026-04-05','126',100.00);
insert into cards values('163456789012345678','5000000000000000','Credit','2026-05-06','127',101000.00);
insert into cards values('173456789012345678','6000000000000000','Credit','2026-06-07','128',99.00);
insert into cards values('183456789012345678','7000000000000000','Debit','2026-07-08','129',0.00);
insert into cards values('193456789012345678','8000000000000000','Debit','2026-08-09','110',500.00);
insert into cards values('110456789012345678','9000000000000000','Credit','2026-09-10','111',1000.00);
insert into cards values('111456789012345678','0100000000000000','Debit','2026-10-11','112',700.00);
insert into cards values('112456789012345678','0110000000000000','Credit','2026-11-12','113',0.00);
insert into cards values('113456789012345678','0120000000000000','Credit','2026-12-13','114',10.00);
insert into cards values('114456789012345678','0130000000000000','Credit','2026-01-14','115',188.00);
insert into cards values('115456789012345678','0140000000000000','Debit','2026-01-15','116',19.00);
insert into cards values('116456789012345678','0150000000000000','Debit','2026-01-02','117',9999999.00);

/*Cards for clients extra accounts*/
insert into cards values('223456789012345678','1000000000000001','Credit','2027-02-02','223',999999.00);
insert into cards values('223456789012345678','1000000000000011','Credit','2029-03-05','233',100.00);
insert into cards values('233456789012345678','2000000000000001','Credit','2027-03-03','224',100000.00);
insert into cards values('233456789012345678','2000000000000011','Debit','2028-03-01','234',99.00);
insert into cards values('253456789012345678','4000000000000001','Debit','2027-04-03','225',120.00);
insert into cards values('353456789012345678','4000000000000002','Credit','2027-05-06','226',119.00);
insert into cards values('283456789012345678','7000000000000001','Credit','2027-06-07','227',71.00);
insert into cards values('212456789012345678','1100000000000001','Debit','2027-07-08','228',1100.00);
insert into cards values('312456789012345678','1100000000000002','Credit','2027-08-09','229',55.00);
insert into cards values('312456789012345678','1100000000000012','Debit','2029-07-01','239',800.00);

/*Run until here*/
commit;

/*updates*/
update accounts set account_pin='1111' where account_id='123456789012345678';

/*deletes*/
delete from clients where client_id=1; /*for admin*/