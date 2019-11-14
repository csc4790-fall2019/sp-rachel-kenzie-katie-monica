BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "User" (
	"UserID"	TEXT,
	PRIMARY KEY("UserID")
);
CREATE TABLE IF NOT EXISTS "DBA" (
	"Username"	TEXT,
	"Name"	TEXT,
	"Password"	TEXT,
	PRIMARY KEY("Username")
);
CREATE TABLE IF NOT EXISTS "Resources" (
	"Name"	TEXT,
	"Transportation"	TEXT,
	"Neighborhood"	TEXT,
	"Address"	TEXT,
	"Payment"	TEXT,
	"Appointment Based"	TEXT,
	"Phone Number"	INTEGER,
	"MonHours"	TEXT,
	"TuesHours"	TEXT,
	"WedHours"	TEXT,
	"ThursHours"	TEXT,
	"FriHours"	TEXT,
	"SatHours"	TEXT,
	"SunHours"	TEXT,
	PRIMARY KEY("Name")
);
CREATE TABLE IF NOT EXISTS "Updates" (
	"Username"	TEXT,
	"Resource"	TEXT,
	PRIMARY KEY("Username","Resource"),
	FOREIGN KEY("Username") REFERENCES "DBA"("Username"),
	FOREIGN KEY("Resource") REFERENCES "Resources"("Name")
);
CREATE TABLE IF NOT EXISTS "CommentsOn" (
	"UserID"	INTEGER,
	"Resource"	TEXT,
	FOREIGN KEY("UserID") REFERENCES "User"("UserID"),
	PRIMARY KEY("UserID","Resource"),
	FOREIGN KEY("Resource") REFERENCES "Resources"("Name")
);
CREATE TABLE IF NOT EXISTS "Searches For" (
	"UserID"	INTEGER,
	"Resource"	TEXT,
	FOREIGN KEY("Resource") REFERENCES "Resources"("Name"),
	FOREIGN KEY("UserID") REFERENCES "User"("UserID"),
	PRIMARY KEY("UserID","Resource")
);
CREATE TABLE IF NOT EXISTS "UserTags" (
	"UserID"	INTEGER,
	"TagNames"	TEXT,
	PRIMARY KEY("UserID","TagNames"),
	FOREIGN KEY("UserID") REFERENCES "User"("UserID")
);
CREATE TABLE IF NOT EXISTS "Favorites" (
	"UserID"	INTEGER,
	"FavoriteSelections"	TEXT,
	FOREIGN KEY("UserID") REFERENCES "User"("UserID"),
	PRIMARY KEY("UserID","FavoriteSelections")
);
CREATE TABLE IF NOT EXISTS "Feedback" (
	"UserID"	INTEGER,
	"Resource"	TEXT,
	"Feedback"	TEXT,
	FOREIGN KEY("UserID") REFERENCES "User"("UserID"),
	FOREIGN KEY("Resource") REFERENCES "Resources"("Name"),
	PRIMARY KEY("UserID","Resource","Feedback")
);
CREATE TABLE IF NOT EXISTS "ResourceTags" (
	"Name"	TEXT,
	"TagNames"	TEXT,
	FOREIGN KEY("Name") REFERENCES "Resources"("Name"),
	PRIMARY KEY("Name")
);
CREATE TABLE IF NOT EXISTS "ServiceProvided" (
	"Name"	TEXT,
	"ServiceProvided"	TEXT,
	PRIMARY KEY("Name","ServiceProvided"),
	FOREIGN KEY("Name") REFERENCES "Resources"("Name")
);
INSERT INTO "DBA" VALUES ('rachelw','Rachel Woodlock','gocats20');
INSERT INTO "DBA" VALUES ('katieb','Katie Barta','gocats20');
INSERT INTO "DBA" VALUES ('monicad','Monica Dunphy','gocats20');
INSERT INTO "DBA" VALUES ('mackenziej','Mackenzie Jorgensen','gocats20');
INSERT INTO "Resources" VALUES ('Tenant Legal Aid Referral Line',NULL,NULL,NULL,'Free','','267-443-2500','24hrs','24hrs','24hrs','24hrs','24hrs','24hrs','24hrs');
INSERT INTO "Resources" VALUES ('Community Legal Services (CLS), Chestnut Location',NULL,NULL,'1424 Chestnut Street',NULL,'No appointment necessary','215-981-3700','Walk-in: 9am-12pm,
Landlord Tenant Housing: 9am-11am','Walk-in: 9am-12pm,
Landlord Tenant Housing: 9am-11am','Walk-in: 9am-12pm,
Landlord Tenant Housing: 9am-11am','Walk-in: 9am-12pm,
Landlord Tenant Housing: 9am-11am','Walk-in: 9am-12pm',NULL,NULL);
INSERT INTO "Resources" VALUES ('Homeless Advocacy Project (HAP)',NULL,NULL,NULL,NULL,NULL,'215-523-9595 OR 1-800-837-2672',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('Chosen 300 West',NULL,NULL,'3959 Lancaster Avenue',NULL,NULL,'Legal Services: 215-243-0300
Other inquiries: 215-243-0300','Dinner: 6pm,
Haircuts 2nd Monday: 10am-2pm',NULL,'Learning Meal: 6:30pm',NULL,'Dinner: 6pm',NULL,'Breakfast: 10am');
INSERT INTO "Resources" VALUES ('BenePhilly',NULL,NULL,'1515 Fairmount Ave',NULL,'Walk-ins welcome','215-320-6193','9am-5pm','9am-5pm','9am-5pm','9am-5pm','9am-5pm',NULL,NULL);
INSERT INTO "Resources" VALUES ('Philly Restart',NULL,NULL,'18th Street & Vine Street',NULL,NULL,NULL,'4pm-5pm',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('Covenant House Crisis Center',NULL,NULL,'31-43 East Armat Street',NULL,NULL,'215-951-5411,
24-Hour Hotline: 1-800-999-9999',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('Youth Emergency Services (YES) Center for Runaway Youth',NULL,NULL,NULL,NULL,NULL,'1-800-371-SAFE(7233)',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('Valley Youth House',NULL,NULL,'1500 Sansom Street #300A',NULL,NULL,'215-925-3180',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('PathWays PA Basic Center Program',NULL,NULL,'5013 Hazel Avenue',NULL,NULL,'215-397-4287',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('Forget Me Knot Youth Services',NULL,NULL,'2321 N Broad Street',NULL,NULL,'215-223-3621',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('Attic Youth Center',NULL,NULL,'255 S. 16th Street',NULL,NULL,'215-545-4331','11am-7pm','11am-7pm','1pm-8pm',NULL,'1pm-8pm',NULL,NULL);
INSERT INTO "Resources" VALUES ('Mazzoni Center',NULL,NULL,'809 Locust Street',NULL,NULL,'215-563-0658','9am-7pm','9am-7pm','9am-5pm','9am-5pm','9am-5pm',NULL,NULL);
INSERT INTO "Resources" VALUES ('Mazzoni Center, Washington West Project',NULL,NULL,'1201 Locust Street',NULL,NULL,'215-985-9206','HIV walk-in testing: 9am-8:30pm','HIV walk-in testing: 9am-8:30pm,
STI walk-in testing: 1pm-6pm','HIV walk-in testing: 9am-8:30pm','HIV walk-in testing: 9am-8:30pm,
STI walk-in testing: 6pm-8:30pm','HIV walk-in testing: 9am-8:30pm,
STI walk-in testing: 2pm-5pm','HIV walk-in testing: 1pm-4:30pm,
STI walk-in testing: 1pm-4pm',NULL);
INSERT INTO "Resources" VALUES ('Trans-health Information Project (TIP)',NULL,NULL,'149 W Susquehanna Ave',NULL,'','267-457-3912,
toll free: 866-222-3871','24hrs','24hrs','24hrs','24hrs','24hrs','24hrs','24hrs');
INSERT INTO "Resources" VALUES ('Philadelphia Domestic Violence Hotline',NULL,NULL,NULL,NULL,NULL,'1-866-723-3014 or 1-866-SAFE-014',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('Women Organized Against Rape (WOAR)',NULL,NULL,NULL,NULL,NULL,'24-Hr Crisis Hotline: 215-985-3333',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('Women Against Abuse',NULL,NULL,NULL,NULL,NULL,'215-686-7082',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('St. Francis Inn',NULL,NULL,'2441 Kensington Avenue',NULL,NULL,'215-423-5845','Dinner: 4:30-6pm','Breakfast: 10am-11am,
Clothing: 10am-12pm,
Dinner: 4:30pm-6pm','Breakfast: 10am-11am,
Clothing: 10am-12pm,
Dinner: 4:30-6pm','Breakfast: 10am-11am,
Clothing: 10am-12pm,
Dinner: 4:30-6pm','Lunch: 11:30am-1pm','Lunch: 11:30am-1pm','Lunch: 11:30am-1pm
Dinner: 6pm-7:30pm');
INSERT INTO "Resources" VALUES ('Arch Street Methodist Church',NULL,NULL,'Corner of Broad & Arch Streets',NULL,NULL,'215-568-6250',NULL,NULL,NULL,NULL,NULL,NULL,'Dinner: 6pm-7:30pm');
INSERT INTO "Resources" VALUES ('Mt. Olive Holy Temple',NULL,NULL,'1469 N Broad Street',NULL,NULL,'215-765-3372',NULL,'Lunch: 12pm-2pm',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('Helping Hands',NULL,NULL,'6th Street & Green Street',NULL,NULL,'215-627-1656',NULL,NULL,NULL,NULL,NULL,NULL,'Lunch: 12:30pm');
INSERT INTO "Resources" VALUES ('Broad Street Ministry',NULL,NULL,'315 S. Broad Street 19107',NULL,NULL,'215-735-4847','Lunch: 12pm-1pm.
Mail Pickup: 11:30am-2pm,
Open: 11:30am-3pm','Lunch: 12pm-1pm,
Mail Pickup: 11:30am-2pm,
Open: 11:30am-3pm','Lunch: 12pm-1pm,
Mail Pickup: 11:30am-2pm,
Open: 11:30am-3pm','Lunch: 12pm-1pm,
Mail Pickup: 11:30am-2pm,
Open: 11:30am-3pm','Lunch: 12pm-1pm,
Mail Pickup: 11:30am-2pm,
Open: 11:30am-3pm',NULL,NULL);
INSERT INTO "Resources" VALUES ('Chosen 300 Center City (Spring Garden)',NULL,NULL,'1116 Spring Garden Street
(May-Oct is at 16th & Ben Franklin Parkway)',NULL,NULL,'215-765-9806','Computer Lab: 12pm-2pm,
Haircuts 4th Monday: 10am-2pm,
Dinner: 6pm','Lunch: 12pm (Learning lunch)','Computer Lab: 12pm-2pm,
Dinner: 6pm',NULL,'Computer Lab: 12pm-2pm,
Dinner: 6pm','Dinner: 5pm (Nov-April)','Support Group: 8am,
Breakfast: 10am');
INSERT INTO "Resources" VALUES ('Saint Mark''s Soup Bowl',NULL,NULL,'1625 Locust Street',NULL,NULL,'215-735-1416',NULL,NULL,NULL,NULL,NULL,'Breakfast: 6:30am-9am',NULL);
INSERT INTO "Resources" VALUES ('Sunday Breakfast Rescue Mission',NULL,NULL,'302 N. 13th Street',NULL,NULL,'215-922-6400','Shelter INTAKE: 7am
Breakfast: 7am
Lunch: 12pm
Dinner: 6pm','Shelter INTAKE: 7am,
Breakfast: 7am,
Lunch: 12pm,
Dinner: 6pm','Shelter INTAKE: 7am,
Breakfast: 7am,
Lunch: 12pm,
Dinner: 6pm','Shelter INTAKE: 7am,
Breakfast: 7am,
Lunch: 12pm,
Dinner: 6pm','Shelter INTAKE: 7am,
Breakfast: 7am,
Lunch: 12pm,
Dinner: 6pm','Shelter INTAKE: 7am,
Breakfast: 7am,
Lunch: 12pm,
Dinner: 6pm','Shelter INTAKE: 7am,
Breakfast: 7am,
Lunch: 12pm,
Dinner: 6pm');
INSERT INTO "Resources" VALUES ('Old Pine Community Center',NULL,NULL,'401 Lombard Street',NULL,NULL,'215-627-2493','Sack breakfast: 7:30am-10:00am,
Sack lunch: 11:30am-1:30pm','Sack breakfast: 7:30am-10:00am,
Sack lunch: 11:30am-1:30pm','Sack breakfast: 7:30am-10:00am,
Sack lunch: 11:30am-1:30pm','Sack breakfast: 7:30am-10:00am,
Sack lunch: 11:30am-1:30pm','Showers: 7am-7:30am,
Sack breakfast: 7:30am-10:00am,
Sack lunch: 11:30am-1:30pm',NULL,'Showers: 7:30am-8:20am,
Breakfast: 8am-9:30am');
INSERT INTO "Resources" VALUES ('Bright Hope Baptist Church',NULL,NULL,'1601 N. 12th Street',NULL,NULL,'215-232-6004','Dinner: 6pm','Dinner: 6pm','Dinner: 6pm','Dinner: 6pm',NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('Church of the Advocate',NULL,NULL,'1801 Diamond Street',NULL,NULL,'215-978-8000','Lunch: 12pm-2pm','Lunch: 12pm-2pm','Lunch: 12pm-2pm','Lunch: 12pm-2pm','Lunch: 12pm-2pm',NULL,NULL);
INSERT INTO "Resources" VALUES ('Women of Hope',NULL,NULL,'1210 Lombard Street',NULL,NULL,'215-732-1341','Lunch: 12pm-1pm','Showers: 11am-11:45am,
Lunch: 12pm-1pm','Lunch: 12pm-1pm','Showers: 11am-11:45am,
Lunch: 12pm-1pm','Lunch: 12pm-1pm',NULL,NULL);
INSERT INTO "Resources" VALUES ('Our Brother''s Place',NULL,NULL,'907 Hamilton Street',NULL,NULL,'215-985-1600','Lunch & Showers: 12pm','Lunch & Showers: 12pm','Lunch & Showers: 12pm','Lunch & Showers: 12pm','Lunch & Showers: 12pm','Lunch & Showers: 12pm','Lunch & Showers: 12pm');
INSERT INTO "Resources" VALUES ('Old St. Joseph Church',NULL,NULL,'321 Willings Alley',NULL,NULL,'215-923-1733',NULL,'Lunch: 11:30am-1:30pm',NULL,'Lunch: 11:30am-1:30pm',NULL,'Lunch: 11:30am-1:30pm',NULL);
INSERT INTO "Resources" VALUES ('St. John''s Hospice','',NULL,'1221 Race Street',NULL,NULL,'215-563-7763','Clothes and Showers: 8:30am (Seniors & Vets only, sign up the day before),
Health Services (Nurse): 8:30am-2pm,
Lunch: 12-1pm,
Social Services: 12pm-2:30pm,
Dinner: 4:30pm (sign up at 4pm)','Clothes and Showers: 8:30am (sign up the day before),
Lunch: 12-1pm (except 2nd Tues),
Social Services: 12pm-2:30pm','Clothes and Showers: 8:30am (sign up the day before),
Lunch: 12-1pm,
Social Services: 12pm-2:30pm,
Dinner: 4:30pm (sign up at 4pm)
','Lunch: 12-1pm,
Social Services: 12pm-2:30pm','Clothes and Showers: 8:30am (sign up the day before),
Health Services (Nurse): 8:30am-2pm,
Lunch: 12-1pm,
Social Services: 12pm-2:30pm,
Dinner: 4:30pm (sign up at 4pm)',NULL,NULL);
INSERT INTO "Resources" VALUES ('Emergency',NULL,NULL,NULL,NULL,NULL,911,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('Stephen Klein Wellness Center, Project HOME','Bus options: 3, 33, and 61',NULL,'2144 Cecil B. Moore Avenue',NULL,'Preferred Yes','215-320-6187','9am-4:30pm','9am-4:30pm','9am-4:30pm','9am-4:30pm','9am-4:30pm',NULL,NULL);
INSERT INTO "Resources" VALUES ('Fairmount Health Center',NULL,NULL,'1412-22 Fairmount Avenue','Co-pays on sliding scale from $20 to $40','Walk-ins welcome','215-235-9600','8:30am-5pm','8:30am-5pm','8:30am-5pm','8:30am-5pm','8:30am-5pm',NULL,NULL);
INSERT INTO "Resources" VALUES ('Fairmount Health Center-Our Brother''s Place',NULL,NULL,'907 Hamilton Street',NULL,NULL,'215-985-1600',NULL,'9am-4pm',NULL,'9am-4pm, 7pm-8:30pm',NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('Mary Howard Health Center',NULL,NULL,'125 S. 9th Street',NULL,'Appointments and walk-ins welcome, appointments have much more availability though','215-592-4500','Mental Health Support Walk-ins: 6:30am-6:45am,
Walk-ins: 7am,
Appointment Hours: 9:30am-5:00pm','Mental Health Support Walk-ins: 6:30am-6:45am,
Walk-ins: 7am,
Appointment Hours: 9:30am-5:00pm','Walk-ins: 7am,
Appointment Hours: 9:30am-5:00pm','Walk-ins: 7am,
Appointment Hours: 9:30am-5:00pm','Appointment Hours: 9:30am-5:00pm',NULL,NULL);
INSERT INTO "Resources" VALUES ('House of Grace Catholic Worker Clinic',NULL,NULL,'1813 East Hagert Street',NULL,NULL,'215-423-0222',NULL,'9:30am-11:30am, 
4:30pm-6:30pm','9:30am-11:30am','4:30pm-6:30pm','11:30am-1:30pm',NULL,NULL);
INSERT INTO "Resources" VALUES ('GET UP',NULL,NULL,'3130 Kensington Avenue',NULL,NULL,'215-888-2448','9am-4pm','9am-4pm','9am-4pm','9am-4pm','9am-4pm',NULL,NULL);
INSERT INTO "Resources" VALUES ('Jonathan Lax Center, Philadelphia FIGHT Community Health Centers',NULL,NULL,'1233 Locust St., 4th floor',NULL,NULL,'215-790-1788',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('John Bell Health Center, Philadelphia FIGHT Community Health Centers',NULL,NULL,'1207 Chestnut St., 3rd floor',NULL,NULL,'267-725-0252',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('Y-HEP Youth Health Center, Philadelphia FIGHT Community Health Centers',NULL,NULL,'1207 Chestnut St., 5th floor',NULL,NULL,'215-344-1632',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('Alcohol & Other Drug Information and Recovery Support Line',NULL,NULL,NULL,NULL,NULL,'800-221-6333','24hrs','24hrs','24hrs','24hrs','24hrs','24hrs','24hrs');
INSERT INTO "Resources" VALUES ('NET Access Point',NULL,NULL,'499 N. 5th St.',NULL,'No appointment necessary','215-451-7114','24hrs','24hrs','24hrs','24hrs','24hrs','24hrs','24hrs');
INSERT INTO "Resources" VALUES ('Prevention Point Philadelphia',NULL,NULL,'2913 Kensington Avenue',NULL,NULL,'215-634-5272','12pm-4:30pm','12pm-4:30pm','12pm-4:30pm','12pm-4:30pm','12pm-3pm',NULL,NULL);
INSERT INTO "Resources" VALUES ('Community Legal Services (CLS), Erie Location',NULL,NULL,'1410 W. Erie Avenue',NULL,NULL,'215-227-2400','SSI Appeal & Utilities: 8:30am-12pm
Walk-in: 9am-12pm',NULL,'SSI Appeal & Utilities: 8:30am-12pm,
Walk-in: 9am-12pm',NULL,'SSI Appeal & Utilities: 8:30am-12pm,
Walk-in: 9am-12pm',NULL,NULL);
INSERT INTO "Resources" VALUES ('Suicide Hotline',NULL,NULL,NULL,NULL,NULL,'1-800-273-TALK (8255)',NULL,NULL,'24hrs','24hrs','24hrs','24hrs','24hrs');
INSERT INTO "Resources" VALUES ('Office of Behavioral Health Emergency and Information Line',NULL,NULL,NULL,NULL,NULL,'215-685-6440','24hrs','24hrs','24hrs',NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('Mercy Hospital of Philadelphia Crisis Response Center (CRC)',NULL,NULL,'501 S. 54th Street',NULL,NULL,'215-748-9525',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('Hall Mercer Crisis Response Center (CRC)-Pennsylvania Hospital',NULL,NULL,'245 S. 8th Street',NULL,NULL,'215-829-LIFE (5433)',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('Consumer Satisfaction Team',NULL,NULL,'520 Delaware Avenue, 7th Floor',NULL,NULL,'215-923-9627',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('Office of Homeless Services (OHS) Apple Tree Family Center',NULL,NULL,'1430 Cherry Street',NULL,NULL,'215-686-7150','INTAKE: 7am-3pm','INTAKE: 7am-3pm','INTAKE: 7am-3pm','INTAKE: 7am-3pm','INTAKE: 7am-3pm',NULL,NULL);
INSERT INTO "Resources" VALUES ('OHS, Red Shield Family Residence',NULL,NULL,'715 N. Broad Street',NULL,NULL,'215-787-2887',NULL,NULL,NULL,NULL,NULL,'INTAKE: After 3PM','INTAKE: After 3PM');
INSERT INTO "Resources" VALUES ('OHS Gaudenzia''s House of Passage, Kirkbride Center',NULL,NULL,'48th Street and Haverford Avenue (48th Street side entrance)',NULL,NULL,'215-471-2017',NULL,NULL,NULL,NULL,NULL,'INTAKE: After 4PM','INTAKE: After 4PM');
INSERT INTO "Resources" VALUES ('OHS The Roosevelt Darby Center',NULL,NULL,'802 North Broad Street',NULL,NULL,'215-685-3700','INTAKE: 7am-3pm','INTAKE: 7am-3pm','INTAKE: 7am-3pm','INTAKE: 7am-3pm','INTAKE: 7am-3pm',NULL,NULL);
INSERT INTO "Resources" VALUES ('OHS Station House',NULL,NULL,'2601 N. Broad Street (rear entrance)',NULL,NULL,'215-225-9230','INTAKE: After 4pm','INTAKE: After 4pm','INTAKE: After 4pm','INTAKE: After 4pm','INTAKE: After 4pm','INTAKE: anytime','INTAKE: anytime');
INSERT INTO "Resources" VALUES ('Office of Homeless Services, Participant Comment Line',NULL,NULL,NULL,NULL,NULL,'215-686-4700',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('The Hub of Hope',NULL,NULL,'1401 Arch Street, Suburban Station Concourse-Lower Level',NULL,NULL,'215-309-5225','7am-7pm','7am-7pm,
Medical: 1pm-5pm,
Dental: 1pm-4:30pm','7am-7pm,
Medical: 1pm-5pm','7am-7pm,
Dental: 8:30am-12pm,
Medical: 9am-5pm
','7am-7pm,
Dinner: 4pm-5:15pm','3pm-7pm,
Dinner: 4pm-5:15pm','3pm-7pm,
Dinner: 4pm-5:15pm');
INSERT INTO "Resources" VALUES ('Welcome Center Lutheran Church of the Holy Communion',NULL,NULL,'2111 Sansom Street',NULL,NULL,'215-567-3668',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('Philadelphia Recovery Community Center (PRCC)',NULL,NULL,'1701 Lehigh Ave',NULL,NULL,'215-223-7700','10am-6pm','10am-6pm','10am-6pm','11:30am-7:30pm','11:30am-7:30pm',NULL,NULL);
INSERT INTO "Resources" VALUES ('A New Life Recovery Learning Center',NULL,NULL,'3119 Spring Garden Street',NULL,NULL,'267-507-3529','8am-4pm','8am-4pm','8am-4pm','8am-4pm','8am-4pm',NULL,NULL);
INSERT INTO "Resources" VALUES ('The Well',NULL,NULL,'2709 N. Broad Street, 1st Floor',NULL,NULL,'267-507-3470','Office: 9am-5pm','Office: 9am-5pm','Office: 9am-5pm','Office: 9am-5pm','Office: 9am-5pm',NULL,NULL);
INSERT INTO "Resources" VALUES ('National Human Trafficking Hotline',NULL,NULL,NULL,NULL,NULL,'1-888-373-7888',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Resources" VALUES ('National Veterans who are Homeless (or At-Risk of Homelessness) Hotline',NULL,NULL,NULL,NULL,NULL,'1-877-4AID-VET (824-3838)','24hrs','24hrs','24hrs','24hrs','24hrs','24hrs','24hrs');
INSERT INTO "Resources" VALUES ('Face to Face',NULL,NULL,'123 East Price St.',NULL,NULL,'215-849-0179','9am-2pm','9am-2pm',NULL,NULL,'9am-2pm','9am-2pm','10:30am-3:45pm');
INSERT INTO "Resources" VALUES ('The Perimeter (Veteran Services)',NULL,NULL,'213-217 N. 4th Street (at Arch Street)',NULL,NULL,'215-923-2600','8:30am-4:30pm','8:30am-4:30pm','8:30am-4:30pm','8:30am-4:30pm','8:30am-4:30pm',NULL,NULL);
INSERT INTO "ResourceTags" VALUES ('Tenant Legal Aid Referral Line','Legal Services');
INSERT INTO "ResourceTags" VALUES ('Homeless Advocacy Project (HAP)','Legal Services');
INSERT INTO "ResourceTags" VALUES ('Chosen 300 West','Legal Services, Meals, Women, Men, Families, Haircuts');
INSERT INTO "ResourceTags" VALUES ('BenePhilly','Benefits Access');
INSERT INTO "ResourceTags" VALUES ('Philly Restart','Benefits Access');
INSERT INTO "ResourceTags" VALUES ('Covenant House Crisis Center','Youth Services');
INSERT INTO "ResourceTags" VALUES ('Youth Emergency Services (YES) Center for Runaway Youth','Youth Services');
INSERT INTO "ResourceTags" VALUES ('Valley Youth House','Youth Services, LGBTQ, Shelter');
INSERT INTO "ResourceTags" VALUES ('PathWays PA Basic Center Program','Youth Services, Women Only, Shelter');
INSERT INTO "ResourceTags" VALUES ('Attic Youth Center','LGBTQ, HIV Testing, Counseling');
INSERT INTO "ResourceTags" VALUES ('Mazzoni Center','LGBTQ, Health Services, HIV Testing, Counseling, Support Groups');
INSERT INTO "ResourceTags" VALUES ('Forget Me Knot Youth Services','Youth Services, Shelter, LGBTQ');
INSERT INTO "ResourceTags" VALUES ('Mazzoni Center, Washington West Project','LGBTQ, HIV Testing, STI Testing');
INSERT INTO "ResourceTags" VALUES ('Trans-health Information Project (TIP)','LGBTQ');
INSERT INTO "ResourceTags" VALUES ('Philadelphia Domestic Violence Hotline','Domestic Violence, Shelter, Legal Services');
INSERT INTO "ResourceTags" VALUES ('Women Organized Against Rape (WOAR)','Domestic Violence, Women, Counseling, Education Services');
INSERT INTO "ResourceTags" VALUES ('Women Against Abuse','Domestic Violence, Legal Services');
INSERT INTO "ResourceTags" VALUES ('St. Francis Inn','Meals, Women, Men, Families');
INSERT INTO "ResourceTags" VALUES ('Arch Street Methodist Church','Meals, Women, Men, Families');
INSERT INTO "ResourceTags" VALUES ('Mt. Olive Holy Temple','Meals, Women, Men, Families');
INSERT INTO "ResourceTags" VALUES ('Helping Hands','Meals, Women, Men, Families');
INSERT INTO "ResourceTags" VALUES ('Broad Street Ministry','Meals, Health Services, Personal Care Items, Art');
INSERT INTO "ResourceTags" VALUES ('Chosen 300 Center City (Spring Garden)','Meals, Services, Women, Men, Families');
INSERT INTO "ResourceTags" VALUES ('Saint Mark''s Soup Bowl','Meals, Women, Men, Families');
INSERT INTO "ResourceTags" VALUES ('Sunday Breakfast Rescue Mission','Meals, Women, Men, Families, Shelter, Men ONLY');
INSERT INTO "ResourceTags" VALUES ('Old Pine Community Center','Meals, Showers, Women, Men, Families');
INSERT INTO "ResourceTags" VALUES ('Bright Hope Baptist Church','Meals, Women, Men, Families');
INSERT INTO "ResourceTags" VALUES ('Church of the Advocate','Meals, Women, Men, Families');
INSERT INTO "ResourceTags" VALUES ('Women of Hope','Meals, Women Only');
INSERT INTO "ResourceTags" VALUES ('Our Brother''s Place','Meals, Men Only, Showers');
INSERT INTO "ResourceTags" VALUES ('Old St. Joseph Church','Meals, Men Only');
INSERT INTO "ResourceTags" VALUES ('St. John''s Hospice','Meals, Men Only, Health Services, Showers, Clothes, Veterans');
INSERT INTO "ResourceTags" VALUES ('Emergency','Health Services');
INSERT INTO "ResourceTags" VALUES ('Stephen Klein Wellness Center, Project HOME','Non-Emergency, Counselling, Health Services');
INSERT INTO "ResourceTags" VALUES ('Fairmount Health Center','Non-Emergency, Health Services');
INSERT INTO "ResourceTags" VALUES ('Fairmount Health Center-Our Brother''s Place','Non-Emergency, Health Services');
INSERT INTO "ResourceTags" VALUES ('Mary Howard Health Center','Non-Emergency, Health Services, Mental Health Support');
INSERT INTO "ResourceTags" VALUES ('House of Grace Catholic Worker Clinic','Non-Emergency, Health Services, Showers');
INSERT INTO "ResourceTags" VALUES ('GET UP','Non-Emergency, HIV Testing, STI Testing');
INSERT INTO "ResourceTags" VALUES ('Jonathan Lax Center, Philadelphia FIGHT Community Health Centers','Non-Emergency, Health Services');
INSERT INTO "ResourceTags" VALUES ('John Bell Health Center, Philadelphia FIGHT Community Health Centers','Non-Emergency, Health Services');
INSERT INTO "ResourceTags" VALUES ('Y-HEP Youth Health Center, Philadelphia FIGHT Community Health Centers','Youth Services, Non-Emergency, Health Services');
INSERT INTO "ResourceTags" VALUES ('Alcohol & Other Drug Information and Recovery Support Line','Recovery Resources');
INSERT INTO "ResourceTags" VALUES ('NET Access Point','Recovery Resources');
INSERT INTO "ResourceTags" VALUES ('Prevention Point Philadelphia','HIV Testing, Syringe Exchange, Health Services');
INSERT INTO "ResourceTags" VALUES ('Community Legal Services (CLS), Chestnut Location','Legal Services');
INSERT INTO "ResourceTags" VALUES ('Community Legal Services (CLS), Erie Location','Legal Services');
INSERT INTO "ResourceTags" VALUES ('Suicide Hotline','Mental Health Support, Emergency');
INSERT INTO "ResourceTags" VALUES ('Office of Behavioral Health Emergency and Information Line','Mental Health Support, Emergency');
INSERT INTO "ResourceTags" VALUES ('Mercy Hospital of Philadelphia Crisis Response Center (CRC)','Mental Health Support, Emergency');
INSERT INTO "ResourceTags" VALUES ('Hall Mercer Crisis Response Center (CRC)-Pennsylvania Hospital','Mental Health Support, Emergency');
INSERT INTO "ResourceTags" VALUES ('Consumer Satisfaction Team','Mental Health Support');
INSERT INTO "ResourceTags" VALUES ('Office of Homeless Services (OHS) Apple Tree Family Center','Shelter, Families, Single Women');
INSERT INTO "ResourceTags" VALUES ('OHS, Red Shield Family Residence','Shelter, Families Only');
INSERT INTO "ResourceTags" VALUES ('OHS Gaudenzia''s House of Passage, Kirkbride Center','Shelter, Single Women Only');
INSERT INTO "ResourceTags" VALUES ('OHS The Roosevelt Darby Center','Shelter, Single Men Only');
INSERT INTO "ResourceTags" VALUES ('OHS Station House','Shelter, Single Men Only');
INSERT INTO "ResourceTags" VALUES ('Office of Homeless Services, Participant Comment Line','Shelter');
INSERT INTO "ResourceTags" VALUES ('The Hub of Hope','Drop-in, Health Services, Meals, Support Groups, Showers');
INSERT INTO "ResourceTags" VALUES ('Welcome Center Lutheran Church of the Holy Communion','Meals');
INSERT INTO "ResourceTags" VALUES ('Philadelphia Recovery Community Center (PRCC)','Support Group, Drop-in Center');
INSERT INTO "ResourceTags" VALUES ('A New Life Recovery Learning Center','Drop-in Center');
INSERT INTO "ResourceTags" VALUES ('The Well','Drop-in Center');
INSERT INTO "ResourceTags" VALUES ('National Human Trafficking Hotline','Legal Services');
INSERT INTO "ResourceTags" VALUES ('National Veterans who are Homeless (or At-Risk of Homelessness) Hotline','Veterans');
INSERT INTO "ResourceTags" VALUES ('Face to Face','Drop-in Center, Meals, Health Services, Legal Services');
INSERT INTO "ResourceTags" VALUES ('The Perimeter (Veteran Services)','Shelter, Meals, Clothing, Counseling');
INSERT INTO "ServiceProvided" VALUES ('Tenant Legal Aid Referral Line','Eviction prevention resources. Free legal advice
and representation for low-income tenants');
INSERT INTO "ServiceProvided" VALUES ('Homeless Advocacy Project (HAP)','Weekly free legal clinics in various locations.');
INSERT INTO "ServiceProvided" VALUES ('Chosen 300 West','Expungement Services, Meals, Haircuts');
INSERT INTO "ServiceProvided" VALUES ('BenePhilly','Food stamps, medical benefits & state benefits.');
INSERT INTO "ServiceProvided" VALUES ('Philly Restart','Vouchers for PennDOT ID or PA birth
certificate given with referral letter from shelter or
agency. Meal served.');
INSERT INTO "ServiceProvided" VALUES ('Covenant House Crisis Center','Ages 21 and under youth services.');
INSERT INTO "ServiceProvided" VALUES ('Youth Emergency Services (YES) Center for Runaway Youth','Ages 12-17, 24-Hour Hotline & Intake');
INSERT INTO "ServiceProvided" VALUES ('Valley Youth House','Street outreach and transitional housing (including LGBTQ)');
INSERT INTO "ServiceProvided" VALUES ('PathWays PA Basic Center Program','Ages 14-17, females only. Services and housing.');
INSERT INTO "ServiceProvided" VALUES ('Forget Me Knot Youth Services','Ages 13-18. LGBTQ inclusive. Services, Emergency Shelter');
INSERT INTO "ServiceProvided" VALUES ('Attic Youth Center','Ages 14-23. HIV testing, individual counseling, social activities,
and safe environment for youth.');
INSERT INTO "ServiceProvided" VALUES ('Mazzoni Center','Medical care, counseling, HIV testing, trans health services, support groups');
INSERT INTO "ServiceProvided" VALUES ('Mazzoni Center, Washington West Project','HIV and STI walk-in testing for LGBTQ');
INSERT INTO "ServiceProvided" VALUES ('Trans-health Information Project (TIP)','Educational workshops, group support');
INSERT INTO "ServiceProvided" VALUES ('Philadelphia Domestic Violence Hotline','Emergency shelter, transitional housing, referral, and legal representation');
INSERT INTO "ServiceProvided" VALUES ('Women Organized Against Rape (WOAR)','Advocacy, counseling, and education services');
INSERT INTO "ServiceProvided" VALUES ('Women Against Abuse','Legal center');
INSERT INTO "ServiceProvided" VALUES ('St. Francis Inn','Phone usage, resource referral, meals for families, women, and men');
INSERT INTO "ServiceProvided" VALUES ('Arch Street Methodist Church','Sunday dinner for women, men, and families');
INSERT INTO "ServiceProvided" VALUES ('Mt. Olive Holy Temple','Lunch on Tuesdays for women, men, and families');
INSERT INTO "ServiceProvided" VALUES ('Helping Hands','Service followed by lunch on Sundays');
INSERT INTO "ServiceProvided" VALUES ('Broad Street Ministry','Health Services, Personal Care Items, Art, Lunch, Mail Pickup');
INSERT INTO "ServiceProvided" VALUES ('Chosen 300 Center City (Spring Garden)','Meals, Haircuts, Computer Lab, Support Group');
INSERT INTO "ServiceProvided" VALUES ('Saint Mark''s Soup Bowl','Saturday morning breakfasts');
INSERT INTO "ServiceProvided" VALUES ('Sunday Breakfast Rescue Mission','Breakfast, lunch, and dinner everyday of the week. Shelter for men available.');
INSERT INTO "ServiceProvided" VALUES ('Old Pine Community Center','Provides sack breakfast and lunches on weekdays. Showers provided on Friday and Sunday mornings. Breakfasts on Sundays.');
INSERT INTO "ServiceProvided" VALUES ('Bright Hope Baptist Church','Dinner served Monday through Thursday.');
INSERT INTO "ServiceProvided" VALUES ('Church of the Advocate','Lunch served Monday through Friday.');
INSERT INTO "ServiceProvided" VALUES ('Women of Hope','Lunch served Monday through Friday. Showers provided Tuesday and Thursday.');
INSERT INTO "ServiceProvided" VALUES ('Our Brother''s Place','Lunches and showers provided daily.');
INSERT INTO "ServiceProvided" VALUES ('Old St. Joseph Church','Lunch provided for men.');
INSERT INTO "ServiceProvided" VALUES ('St. John''s Hospice','Lunches and Dinners served. Clothes and showers 4 days a week. Social services 5 days a week. Nurse is present 2 days a week. For men only.');
INSERT INTO "ServiceProvided" VALUES ('Emergency','Call 911 for emergency help');
INSERT INTO "ServiceProvided" VALUES ('Stephen Klein Wellness Center, Project HOME','Medical clinic, dental treatment, counselling, health, insurance enrollment');
INSERT INTO "ServiceProvided" VALUES ('Fairmount Health Center','Non-emergency health services and co-pays of $20-40');
INSERT INTO "ServiceProvided" VALUES ('Fairmount Health Center-Our Brother''s Place','Non-emergency services on Tuesday and Thursdays');
INSERT INTO "ServiceProvided" VALUES ('Mary Howard Health Center','Non-emergency health services by appointment and walk-in, mental health support');
INSERT INTO "ServiceProvided" VALUES ('House of Grace Catholic Worker Clinic','Walk-in health clinic and showers available');
INSERT INTO "ServiceProvided" VALUES ('GET UP','Free HIV/STI Testing');
INSERT INTO "ServiceProvided" VALUES ('Jonathan Lax Center, Philadelphia FIGHT Community Health Centers','HIV primary medical care for adults');
INSERT INTO "ServiceProvided" VALUES ('John Bell Health Center, Philadelphia FIGHT Community Health Centers','Primary medical clinic for adults');
INSERT INTO "ServiceProvided" VALUES ('Y-HEP Youth Health Center, Philadelphia FIGHT Community Health Centers','Primary medical care for youth (Ages 13-24)');
INSERT INTO "ServiceProvided" VALUES ('Alcohol & Other Drug Information and Recovery Support Line','Drug info and recovery support line');
INSERT INTO "ServiceProvided" VALUES ('NET Access Point','24/7 access to treatment; no appointment needed');
INSERT INTO "ServiceProvided" VALUES ('Prevention Point Philadelphia','HIV testing, drop-in center, street side health project, safer use  supplies on M-W-F, overdose, and narcan training daily');
INSERT INTO "ServiceProvided" VALUES ('Community Legal Services (CLS), Chestnut Location','Legal Services including landlord tenant housing');
INSERT INTO "ServiceProvided" VALUES ('Community Legal Services (CLS), Erie Location','Legal Services including SSI appeal and utilities');
INSERT INTO "ServiceProvided" VALUES ('Suicide Hotline','Call for mental health support');
INSERT INTO "ServiceProvided" VALUES ('Office of Behavioral Health Emergency and Information Line','24hr mental health delegate line');
INSERT INTO "ServiceProvided" VALUES ('Mercy Hospital of Philadelphia Crisis Response Center (CRC)','Mental health support crisis response');
INSERT INTO "ServiceProvided" VALUES ('Hall Mercer Crisis Response Center (CRC)-Pennsylvania Hospital','Mental health support and crisis team');
INSERT INTO "ServiceProvided" VALUES ('Consumer Satisfaction Team','Call to report complaints about mental health treatment');
INSERT INTO "ServiceProvided" VALUES ('Office of Homeless Services (OHS) Apple Tree Family Center','Families and single women seeking emergency housing services');
INSERT INTO "ServiceProvided" VALUES ('OHS, Red Shield Family Residence','Families only emergency housing after hours on holidays and weekends after 3pm');
INSERT INTO "ServiceProvided" VALUES ('OHS Gaudenzia''s House of Passage, Kirkbride Center','Single women only emergency after-hours services on holidays and weekends after 4pm');
INSERT INTO "ServiceProvided" VALUES ('OHS The Roosevelt Darby Center','Single men seeking emergency housing services and the intake is Monday through Friday');
INSERT INTO "ServiceProvided" VALUES ('OHS Station House','Single men emergency housing after-hours services, intake is daily after 4pm and 24 hours on holidays and weekends');
INSERT INTO "ServiceProvided" VALUES ('Office of Homeless Services, Participant Comment Line','To register complaints about shelter, transitional and permanent housing, and rapid rehousing please call the number of email ohs-generalinfo@phila.gov');
INSERT INTO "ServiceProvided" VALUES ('The Hub of Hope','Coffee and snacks, meals, medical and dental services, case management, recovery groups, showers/laundry every day of the week');
INSERT INTO "ServiceProvided" VALUES ('Welcome Center Lutheran Church of the Holy Communion','Friday lunches, drop in center, and activites on Friday afternoons');
INSERT INTO "ServiceProvided" VALUES ('Philadelphia Recovery Community Center (PRCC)','Group and individual recovery support');
INSERT INTO "ServiceProvided" VALUES ('A New Life Recovery Learning Center','Drop-in center for recovery');
INSERT INTO "ServiceProvided" VALUES ('The Well','Recovery and peer support, life and job coaching');
INSERT INTO "ServiceProvided" VALUES ('National Human Trafficking Hotline','Reporting, legal services, interpretation, social services, referral');
INSERT INTO "ServiceProvided" VALUES ('National Veterans who are Homeless (or At-Risk of Homelessness) Hotline','National 24-hour hotline for veterans who are homeless or at risk');
INSERT INTO "ServiceProvided" VALUES ('Face to Face','Free meals, social services, health center, legal');
INSERT INTO "ServiceProvided" VALUES ('The Perimeter (Veteran Services)','Showers, haircuts, food, clothing, laundry, counseling, shelter, transportation');
COMMIT;
