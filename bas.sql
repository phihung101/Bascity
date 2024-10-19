/*
 Navicat Premium Data Transfer

 Source Server         : samp1
 Source Server Type    : MySQL
 Source Server Version : 50743 (5.7.43-log)
 Source Host           : 15.235.149.125:3306
 Source Schema         : samp

 Target Server Type    : MySQL
 Target Server Version : 50743 (5.7.43-log)
 File Encoding         : 65001

 Date: 06/10/2024 22:58:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Online` int(11) NOT NULL DEFAULT 0,
  `UpdateDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RegiDate` datetime NULL DEFAULT NULL,
  `LastLogin` datetime NULL DEFAULT NULL,
  `Username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Email` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `IP` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.0.0.0',
  `SecureIP` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.0.0.0',
  `Registered` int(11) NOT NULL DEFAULT 0,
  `ConnectedTime` int(11) NOT NULL DEFAULT 0,
  `Sex` int(11) NOT NULL DEFAULT 1,
  `Age` int(11) NOT NULL DEFAULT 18,
  `BirthDate` date NOT NULL DEFAULT '0000-00-00',
  `Band` int(11) NOT NULL DEFAULT 0,
  `PermBand` int(11) NOT NULL DEFAULT 0,
  `Warnings` int(11) NOT NULL DEFAULT 0,
  `Disabled` int(11) NOT NULL DEFAULT 0,
  `Level` int(11) NOT NULL DEFAULT 1,
  `AdminLevel` int(11) NOT NULL DEFAULT 0,
  `SeniorModerator` int(11) NOT NULL DEFAULT 0,
  `DonateRank` int(11) NOT NULL DEFAULT 0,
  `Respect` int(11) NOT NULL DEFAULT 0,
  `XP` int(11) NOT NULL DEFAULT 0,
  `Money` bigint(20) NOT NULL DEFAULT 5000,
  `Bank` bigint(20) NOT NULL DEFAULT 20000,
  `pHealth` float(10, 5) NOT NULL DEFAULT 50.00000,
  `pArmor` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pSHealth` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Int` int(11) NOT NULL DEFAULT 0,
  `VirtualWorld` int(11) NOT NULL DEFAULT 0,
  `Model` int(11) NOT NULL DEFAULT 299,
  `SPos_x` float(20, 5) NOT NULL DEFAULT 0.00000,
  `SPos_y` float(20, 5) NOT NULL DEFAULT 0.00000,
  `SPos_z` float(20, 5) NOT NULL DEFAULT 0.00000,
  `SPos_r` float(20, 5) NOT NULL DEFAULT 0.00000,
  `BanAppealer` int(11) NOT NULL DEFAULT 0,
  `PR` int(11) NOT NULL DEFAULT 0,
  `HR` int(11) NOT NULL DEFAULT 0,
  `AP` int(11) NOT NULL DEFAULT 1,
  `Security` int(11) NOT NULL DEFAULT 0,
  `ShopTech` int(11) NOT NULL DEFAULT 0,
  `FactionModerator` int(11) NOT NULL DEFAULT 0,
  `GangModerator` int(11) NOT NULL DEFAULT 0,
  `Undercover` int(11) NOT NULL DEFAULT 0,
  `TogReports` int(11) NOT NULL DEFAULT 0,
  `Radio` int(11) NOT NULL DEFAULT 0,
  `RadioFreq` int(11) NOT NULL DEFAULT 0,
  `UpgradePoints` int(11) NOT NULL DEFAULT 0,
  `Origin` int(11) NOT NULL DEFAULT 0,
  `Muted` int(11) NOT NULL DEFAULT 0,
  `Crimes` int(11) NOT NULL DEFAULT 0,
  `Accent` int(11) NOT NULL DEFAULT 0,
  `CHits` int(11) NOT NULL DEFAULT 0,
  `FHits` int(11) NOT NULL DEFAULT 0,
  `Arrested` int(11) NOT NULL DEFAULT 0,
  `Phonebook` int(11) NOT NULL DEFAULT 0,
  `LottoNr` int(11) NOT NULL DEFAULT 0,
  `Fishes` int(11) NOT NULL DEFAULT 0,
  `BiggestFish` int(11) NOT NULL DEFAULT 0,
  `Job` int(11) NOT NULL DEFAULT 0,
  `Job2` int(11) NOT NULL DEFAULT 0,
  `Paycheck` int(11) NOT NULL DEFAULT 0,
  `HeadValue` int(11) NOT NULL DEFAULT 0,
  `Jailed` int(11) NOT NULL DEFAULT 0,
  `JailTime` int(11) NOT NULL DEFAULT 0,
  `WRestricted` int(11) NOT NULL DEFAULT 0,
  `Materials` int(11) NOT NULL DEFAULT 0,
  `Crates` int(11) NOT NULL DEFAULT 0,
  `Pot` int(11) NOT NULL DEFAULT 0,
  `Crack` int(11) NOT NULL DEFAULT 0,
  `Nation` int(11) NOT NULL DEFAULT 0,
  `Leader` int(11) NOT NULL DEFAULT -1,
  `Member` int(11) NOT NULL DEFAULT -1,
  `Division` int(11) NOT NULL DEFAULT -1,
  `FMember` int(11) NOT NULL DEFAULT 255,
  `Rank` int(11) NOT NULL DEFAULT -1,
  `DetSkill` int(11) NOT NULL DEFAULT 0,
  `SexSkill` int(11) NOT NULL DEFAULT 0,
  `BoxSkill` int(11) NOT NULL DEFAULT 0,
  `LawSkill` int(11) NOT NULL DEFAULT 0,
  `MechSkill` int(11) NOT NULL DEFAULT 0,
  `TruckSkill` int(11) NOT NULL DEFAULT 0,
  `DrugsSkill` int(11) NOT NULL DEFAULT 0,
  `ArmsSkill` int(11) NOT NULL DEFAULT 0,
  `SmugglerSkill` int(11) NOT NULL DEFAULT 0,
  `FishSkill` int(11) NOT NULL DEFAULT 0,
  `FightingStyle` int(11) NOT NULL DEFAULT 0,
  `PhoneNr` int(11) NOT NULL DEFAULT 0,
  `Apartment` int(11) NOT NULL DEFAULT -1,
  `Apartment2` int(11) NOT NULL DEFAULT -1,
  `Renting` int(11) NOT NULL DEFAULT -1,
  `FlyLic` int(11) NOT NULL DEFAULT 0,
  `BoatLic` int(11) NOT NULL DEFAULT 1,
  `FishLic` int(11) NOT NULL DEFAULT 1,
  `CheckCash` int(11) NOT NULL DEFAULT 0,
  `Checks` int(11) NOT NULL DEFAULT 0,
  `GunLic` int(11) NOT NULL DEFAULT 1,
  `Gun0` int(11) NOT NULL DEFAULT 0,
  `Gun1` int(11) NOT NULL DEFAULT 0,
  `Gun2` int(11) NOT NULL DEFAULT 0,
  `Gun3` int(11) NOT NULL DEFAULT 0,
  `Gun4` int(11) NOT NULL DEFAULT 0,
  `Gun5` int(11) NOT NULL DEFAULT 0,
  `Gun6` int(11) NOT NULL DEFAULT 0,
  `Gun7` int(11) NOT NULL DEFAULT 0,
  `Gun8` int(11) NOT NULL DEFAULT 0,
  `Gun9` int(11) NOT NULL DEFAULT 0,
  `Gun10` int(11) NOT NULL DEFAULT 0,
  `Gun11` int(11) NOT NULL DEFAULT 0,
  `DrugsTime` int(11) NOT NULL DEFAULT 0,
  `LawyerTime` int(11) NOT NULL DEFAULT 0,
  `LawyerFreeTime` int(11) NOT NULL DEFAULT 0,
  `MechTime` int(11) NOT NULL DEFAULT 0,
  `SexTime` int(11) NOT NULL DEFAULT 0,
  `PayDay` int(11) NOT NULL DEFAULT 0,
  `PayDayHad` int(11) NOT NULL DEFAULT 0,
  `CDPlayer` int(11) NOT NULL DEFAULT 0,
  `Dice` int(11) NOT NULL DEFAULT 0,
  `Spraycan` int(11) NOT NULL DEFAULT 0,
  `Rope` int(11) NOT NULL DEFAULT 0,
  `Cigars` int(11) NOT NULL DEFAULT 0,
  `Sprunk` int(11) NOT NULL DEFAULT 0,
  `Bombs` int(11) NOT NULL DEFAULT 0,
  `Wins` int(11) NOT NULL DEFAULT 0,
  `Loses` int(11) NOT NULL DEFAULT 0,
  `Tutorial` int(11) NOT NULL DEFAULT 0,
  `OnDuty` int(11) NOT NULL DEFAULT 0,
  `Hospital` int(11) NOT NULL DEFAULT 0,
  `Married` int(11) NOT NULL DEFAULT 0,
  `MarriedID` int(11) NOT NULL DEFAULT -1,
  `MarriedTo` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Nobody',
  `ContractBy` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Nobody',
  `ContractDetail` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `WantedLevel` int(11) NOT NULL DEFAULT 0,
  `Insurance` int(11) NOT NULL DEFAULT 0,
  `NewMuted` int(11) NOT NULL DEFAULT 0,
  `NewMutedTotal` int(11) NOT NULL DEFAULT 0,
  `AdMuted` int(11) NOT NULL DEFAULT 0,
  `AdMutedTotal` int(11) NOT NULL DEFAULT 0,
  `HelpMute` int(11) NOT NULL DEFAULT 0,
  `Helper` int(11) NOT NULL DEFAULT 0,
  `ReportMuted` int(11) NOT NULL DEFAULT 0,
  `ReportMutedTotal` int(11) NOT NULL DEFAULT 0,
  `ReportMutedTime` int(11) NOT NULL DEFAULT 0,
  `VIPMuted` int(11) NOT NULL DEFAULT 0,
  `VIPMutedTime` int(11) NOT NULL DEFAULT 0,
  `GiftTime` int(11) NOT NULL DEFAULT 0,
  `AdvisorDutyHours` int(11) NOT NULL DEFAULT 0,
  `AcceptedHelp` int(11) NOT NULL DEFAULT 0,
  `AcceptReport` int(11) NOT NULL DEFAULT 0,
  `ShopTechOrders` int(11) NOT NULL DEFAULT 0,
  `TrashReport` int(11) NOT NULL DEFAULT 0,
  `GangWarn` int(11) NOT NULL DEFAULT 0,
  `FactionBanned` int(11) NOT NULL DEFAULT 0,
  `CSFBanned` int(11) NOT NULL DEFAULT 0,
  `VIPInviteDay` int(11) NOT NULL DEFAULT 0,
  `TempVIP` int(11) NOT NULL DEFAULT 0,
  `BuddyInvite` int(11) NOT NULL DEFAULT 0,
  `Tokens` int(11) NOT NULL DEFAULT 0,
  `PTokens` int(11) NOT NULL DEFAULT 0,
  `TriageTime` int(11) NOT NULL DEFAULT 0,
  `PrisonedBy` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Nobody',
  `PrisonReason` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Flag` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `TaxiLicense` int(11) NOT NULL DEFAULT 0,
  `TicketTime` int(11) NOT NULL DEFAULT 0,
  `Screwdriver` int(11) NOT NULL DEFAULT 0,
  `Smslog` int(11) NOT NULL DEFAULT 0,
  `Wristwatch` int(11) NOT NULL DEFAULT 0,
  `Surveillance` int(11) NOT NULL DEFAULT 0,
  `Tire` int(11) NOT NULL DEFAULT 0,
  `Firstaid` int(11) NOT NULL DEFAULT 0,
  `Rccam` int(11) NOT NULL DEFAULT 0,
  `Receiver` int(11) NOT NULL DEFAULT 0,
  `GPS` int(11) NOT NULL DEFAULT 0,
  `Sweep` int(11) NOT NULL DEFAULT 0,
  `SweepLeft` int(11) NOT NULL DEFAULT 0,
  `Bugged` int(11) NOT NULL DEFAULT 0,
  `pWExists` int(11) NOT NULL DEFAULT 0,
  `pWX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pWY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pWZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pWVW` int(11) NOT NULL DEFAULT 0,
  `pWInt` int(11) NOT NULL DEFAULT 0,
  `pWValue` int(11) NOT NULL DEFAULT -1,
  `pWSeeds` int(11) NOT NULL DEFAULT 0,
  `Warrants` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `JudgeJailTime` int(11) NOT NULL DEFAULT 0,
  `JudgeJailType` int(11) NOT NULL DEFAULT 0,
  `BeingSentenced` int(11) NOT NULL DEFAULT 0,
  `ProbationTime` int(11) NOT NULL DEFAULT 0,
  `DMKills` int(11) NOT NULL DEFAULT 0,
  `Order` varchar(63) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `OrderConfirmed` int(11) NOT NULL DEFAULT 0,
  `CallsAccepted` int(11) NOT NULL DEFAULT 0,
  `PatientsDelivered` int(11) NOT NULL DEFAULT 0,
  `LiveBanned` int(11) NOT NULL DEFAULT 0,
  `FreezeBank` int(11) NOT NULL DEFAULT 0,
  `FreezeHouse` int(11) NOT NULL DEFAULT 0,
  `FreezeCar` int(11) NOT NULL DEFAULT 0,
  `Hydration` int(11) NOT NULL DEFAULT 0,
  `DoubleEXP` int(11) NOT NULL DEFAULT 0,
  `EXPToken` int(11) NOT NULL DEFAULT 0,
  `RacePlayerLaps` int(11) NOT NULL DEFAULT 0,
  `Ringtone` int(11) NOT NULL DEFAULT 0,
  `VIPM` int(11) NOT NULL DEFAULT 0,
  `VIPMO` int(11) NOT NULL DEFAULT 0,
  `VIPExpire` int(11) NOT NULL DEFAULT 0,
  `VIPSold` int(11) NOT NULL DEFAULT 0,
  `GVip` int(11) NOT NULL DEFAULT 0,
  `Speedo` int(11) NOT NULL DEFAULT 0,
  `Firework` int(11) NOT NULL DEFAULT 0,
  `Boombox` int(11) NOT NULL DEFAULT 0,
  `DrawChance` int(11) NOT NULL DEFAULT 0,
  `GoldBoxTokens` int(11) NOT NULL DEFAULT 0,
  `RewardHours` float(10, 5) NOT NULL DEFAULT 0.00000,
  `DMRMuted` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Watchdog` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `CarsRestricted` tinyint(4) NOT NULL DEFAULT 0,
  `Flagged` tinyint(4) NOT NULL DEFAULT 0,
  `LepPoints` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `LepSafePoints` int(11) NOT NULL DEFAULT 0,
  `LastCarWarning` int(11) NOT NULL DEFAULT 0,
  `CarWarns` int(11) NOT NULL DEFAULT 0,
  `Scripter` int(11) NOT NULL DEFAULT 0,
  `Hours` int(11) NOT NULL DEFAULT 0,
  `Paper` int(11) NOT NULL DEFAULT 0,
  `MailEnabled` int(11) NOT NULL DEFAULT 1,
  `Mailbox` int(11) NOT NULL DEFAULT 0,
  `UnreadMails` int(11) NOT NULL DEFAULT 0,
  `TreasureSkill` int(11) NOT NULL DEFAULT 0,
  `MetalDetector` int(11) NOT NULL DEFAULT 0,
  `HelpedBefore` int(11) NOT NULL DEFAULT 0,
  `Business` int(11) NOT NULL DEFAULT -1,
  `BusinessRank` int(11) NOT NULL DEFAULT -1,
  `Trickortreat` int(11) NOT NULL DEFAULT 0,
  `RHMutes` int(11) NOT NULL DEFAULT 0,
  `RHMuteTime` int(11) NOT NULL DEFAULT 0,
  `GiftCode` int(11) NOT NULL DEFAULT 0,
  `Table` int(11) NOT NULL DEFAULT 0,
  `OpiumSeeds` int(11) NOT NULL DEFAULT 0,
  `RawOpium` int(11) NOT NULL DEFAULT 0,
  `Heroin` int(11) NOT NULL DEFAULT 0,
  `Syringe` int(11) NOT NULL DEFAULT 0,
  `Skins` int(11) NOT NULL DEFAULT 0,
  `Hunger` int(11) NOT NULL DEFAULT 50,
  `HungerTimer` int(11) NOT NULL DEFAULT 0,
  `HungerDeathTimer` int(11) NOT NULL DEFAULT 0,
  `Fitness` int(11) NOT NULL DEFAULT 0,
  `LastCharmReceived` int(11) NOT NULL DEFAULT 0,
  `HealthCare` int(11) NOT NULL DEFAULT 0,
  `TotalCredits` int(11) NOT NULL DEFAULT 0,
  `911Muted` int(11) NOT NULL DEFAULT 0,
  `ForcePasswordChange` int(11) NOT NULL DEFAULT 0,
  `ReceivedCredits` int(11) NOT NULL DEFAULT 0,
  `Pin` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `RimMod` int(11) NOT NULL DEFAULT 0,
  `Tazer` int(11) NOT NULL DEFAULT 0,
  `Cuff` int(11) NOT NULL DEFAULT 0,
  `CarVoucher` int(11) NOT NULL DEFAULT 0,
  `ReferredBy` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Nobody',
  `PendingRefReward` int(11) NOT NULL DEFAULT 0,
  `Refers` int(11) NOT NULL DEFAULT 0,
  `Developer` int(11) NOT NULL DEFAULT 0,
  `Famed` int(11) NOT NULL DEFAULT 0,
  `FamedMuted` int(11) NOT NULL DEFAULT 0,
  `DefendTime` int(11) NOT NULL DEFAULT 0,
  `VehicleSlot` int(11) NOT NULL DEFAULT 0,
  `PVIPVoucher` int(11) NOT NULL DEFAULT 0,
  `ToySlot` int(11) NOT NULL DEFAULT 0,
  `RFLTeam` int(11) NOT NULL DEFAULT -1,
  `RFLTeamL` int(11) NOT NULL DEFAULT -1,
  `VehVoucher` int(11) NOT NULL DEFAULT 0,
  `SVIPVoucher` int(11) NOT NULL DEFAULT 0,
  `GVIPVoucher` int(11) NOT NULL DEFAULT 0,
  `GiftVoucher` int(11) NOT NULL DEFAULT 0,
  `FallIntoFun` int(11) NOT NULL DEFAULT 0,
  `ContactSlot` int(11) NOT NULL DEFAULT 0,
  `HungerVoucher` int(11) NOT NULL DEFAULT 0,
  `Vials` int(11) NOT NULL DEFAULT 0,
  `BoughtCure` int(11) NOT NULL DEFAULT 0,
  `AdvertVoucher` int(11) NOT NULL DEFAULT 0,
  `ShopCounter` int(11) NOT NULL DEFAULT 0,
  `ShopNotice` int(11) NOT NULL DEFAULT 0,
  `SVIPExVoucher` int(11) NOT NULL DEFAULT 0,
  `VIPSellable` int(11) NOT NULL DEFAULT 0,
  `ReceivedPrize` int(11) NOT NULL DEFAULT 0,
  `Credits` int(11) NOT NULL DEFAULT 0,
  `SoTaiKhoan` int(11) NOT NULL DEFAULT 0,
  `DanhBa1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DanhBa2` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DanhBa3` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DanhBa4` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DanhBa5` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DanhBa6` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DanhBa7` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DanhBa8` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DanhBa9` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SDT1` int(11) NOT NULL DEFAULT 0,
  `SDT2` int(11) NOT NULL DEFAULT 0,
  `SDT3` int(11) NOT NULL DEFAULT 0,
  `SDT4` int(11) NOT NULL DEFAULT 0,
  `SDT5` int(11) NOT NULL DEFAULT 0,
  `SDT6` int(11) NOT NULL DEFAULT 0,
  `SDT7` int(11) NOT NULL DEFAULT 0,
  `SDT8` int(11) NOT NULL DEFAULT 0,
  `SDT9` int(11) NOT NULL DEFAULT 0,
  `Ammo1` int(11) NOT NULL DEFAULT 0,
  `Ammo2` int(11) NOT NULL DEFAULT 0,
  `Ammo3` int(11) NOT NULL DEFAULT 0,
  `Ammo4` int(11) NOT NULL DEFAULT 0,
  `Ammo5` int(11) NOT NULL DEFAULT 0,
  `Ammo6` int(11) NOT NULL DEFAULT 0,
  `Ammo7` int(11) NOT NULL DEFAULT 0,
  `Ammo8` int(11) NOT NULL DEFAULT 0,
  `9mm` int(11) NOT NULL DEFAULT 0,
  `Sdpistol` int(11) NOT NULL DEFAULT 0,
  `Shotgun` int(11) NOT NULL DEFAULT 0,
  `Uzi` int(11) NOT NULL DEFAULT 0,
  `Tec` int(11) NOT NULL DEFAULT 0,
  `SMG` int(11) NOT NULL DEFAULT 0,
  `Deagle` int(11) NOT NULL DEFAULT 0,
  `Rifle` int(11) NOT NULL DEFAULT 0,
  `Aka` int(11) NOT NULL DEFAULT 0,
  `Mbon` int(11) NOT NULL DEFAULT 0,
  `Spas` int(11) NOT NULL DEFAULT 0,
  `Sniper` int(11) NOT NULL DEFAULT 0,
  `SucKhoe` int(11) NOT NULL DEFAULT 100,
  `TienVienPhi` int(11) NOT NULL DEFAULT 0,
  `QuaTang` int(11) NOT NULL DEFAULT 0,
  `CanSa` int(11) NOT NULL DEFAULT 0,
  `HatCanSa` int(11) NOT NULL DEFAULT 0,
  `IDCS1` int(11) NOT NULL DEFAULT 0,
  `IDCS2` int(11) NOT NULL DEFAULT 0,
  `IDCS3` int(11) NOT NULL DEFAULT 0,
  `IDCS4` int(11) NOT NULL DEFAULT 0,
  `IDCS5` int(11) NOT NULL DEFAULT 0,
  `TimeCS1` int(11) NOT NULL DEFAULT 0,
  `TimeCS2` int(11) NOT NULL DEFAULT 0,
  `TimeCS3` int(11) NOT NULL DEFAULT 0,
  `TimeCS4` int(11) NOT NULL DEFAULT 0,
  `TimeCS5` int(11) NOT NULL DEFAULT 0,
  `PosX_CS1` float(11, 0) NOT NULL DEFAULT 0,
  `PosX_CS2` float(11, 0) NOT NULL DEFAULT 0,
  `PosX_CS3` float(11, 0) NOT NULL DEFAULT 0,
  `PosX_CS4` float(11, 0) NOT NULL DEFAULT 0,
  `PosX_CS5` float(11, 0) NOT NULL DEFAULT 0,
  `PosY_CS1` float(11, 0) NOT NULL DEFAULT 0,
  `PosY_CS2` float(11, 0) NOT NULL DEFAULT 0,
  `PosY_CS3` float(11, 0) NOT NULL DEFAULT 0,
  `PosY_CS4` float(11, 0) NOT NULL DEFAULT 0,
  `PosY_CS5` float(11, 0) NOT NULL DEFAULT 0,
  `PosZ_CS1` float(11, 0) NOT NULL DEFAULT 0,
  `PosZ_CS2` float(11, 0) NOT NULL DEFAULT 0,
  `PosZ_CS3` float(11, 0) NOT NULL DEFAULT 0,
  `PosZ_CS4` float(11, 0) NOT NULL DEFAULT 0,
  `PosZ_CS5` float(11, 0) NOT NULL DEFAULT 0,
  `CuopNha` int(11) NOT NULL DEFAULT 0,
  `SoLanGiaoTrucker` int(11) NOT NULL DEFAULT 0,
  `QuaBom` int(11) NOT NULL DEFAULT 0,
  `Robbing` int(11) NOT NULL DEFAULT 0,
  `CashLoaded` int(11) NOT NULL DEFAULT 0,
  `CashLoading` int(11) NOT NULL DEFAULT 0,
  `ROffered` int(11) NOT NULL DEFAULT 0,
  `ROfferer` int(11) NOT NULL DEFAULT 0,
  `CarLic` int(11) NOT NULL DEFAULT 0,
  `GVIPExVoucher` int(11) NULL DEFAULT 0,
  `KSSilver` int(11) NULL DEFAULT 0,
  `KSGold` int(11) NULL DEFAULT 0,
  `KSDiamond` int(11) NULL DEFAULT 0,
  `PlayTogether0` int(11) NULL DEFAULT 0,
  `PlayTogether1` int(11) NULL DEFAULT 0,
  `PlayTogether2` int(11) NULL DEFAULT 0,
  `PlayTogether3` int(11) NULL DEFAULT 0,
  `PlayTogether4` int(11) NULL DEFAULT 0,
  `PlayTogether5` int(11) NULL DEFAULT 0,
  `PlayTogether6` int(11) NULL DEFAULT 0,
  `PlayTogether7` int(11) NULL DEFAULT 0,
  `PlayTogether8` int(11) NULL DEFAULT 0,
  `PlayTogether9` int(11) NULL DEFAULT 0,
  `PlayTogether10` int(11) NULL DEFAULT 0,
  `PlayTogether11` int(11) NULL DEFAULT 0,
  `PlayTogether12` int(11) NULL DEFAULT 0,
  `USD` int(11) NULL DEFAULT 0,
  `BanTime` int(11) NULL DEFAULT 0,
  `TimeBanned` int(11) NULL DEFAULT 0,
  `BannedBy` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ReasonBanned` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NhiemVu1` int(11) NULL DEFAULT 0,
  `NhiemVu2` int(11) NULL DEFAULT 0,
  `NhiemVu3` int(11) NULL DEFAULT 0,
  `pNV_Pizza` int(11) NULL DEFAULT 0,
  `pNV_Trucker` int(11) NULL DEFAULT 0,
  `pNV_DaoDa` int(11) NULL DEFAULT 0,
  `pDateNV` int(11) NULL DEFAULT 0,
  `pNhanThuongNV` int(11) NULL DEFAULT 0,
  `pCMND` int(11) NULL DEFAULT 0,
  `Banve` int(11) NULL DEFAULT 0,
  `Ca` int(11) NULL DEFAULT 0,
  `Days` int(11) NULL DEFAULT 0,
  `SLDaoda` int(11) NULL DEFAULT 0,
  `SLPizza` int(11) NULL DEFAULT 0,
  `KSDavun` int(11) NULL DEFAULT 0,
  `Nhanlixi` int(11) NULL DEFAULT NULL,
  `Box Secret` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Box Secret Medium` int(11) NULL DEFAULT NULL,
  `Box Secret Christmas` int(11) NULL DEFAULT NULL,
  `Box Secret Master` int(11) NULL DEFAULT NULL,
  `Accentt` int(11) NULL DEFAULT NULL,
  `NewJob` int(11) NULL DEFAULT NULL,
  `CaChep` int(11) NULL DEFAULT NULL,
  `CaVoi` int(11) NULL DEFAULT NULL,
  `CaHeo` int(11) NULL DEFAULT NULL,
  `CaMap` int(11) NULL DEFAULT NULL,
  `Rua` int(11) NULL DEFAULT NULL,
  `CaSau` int(11) NULL DEFAULT NULL,
  `LungGu` int(11) NULL DEFAULT NULL,
  `M4A1` int(11) NULL DEFAULT NULL,
  `AK` int(11) NULL DEFAULT NULL,
  `Mp5` int(11) NULL DEFAULT NULL,
  `Mask` int(11) NULL DEFAULT NULL,
  `GoiPot` int(11) NULL DEFAULT NULL,
  `TuiCanSa` int(11) NULL DEFAULT NULL,
  `Rausach` int(11) NULL DEFAULT NULL,
  `Rauban` int(11) NULL DEFAULT NULL,
  `Crit` int(11) NULL DEFAULT NULL,
  `DoCoCu` int(11) NULL DEFAULT NULL,
  `TrangSucCu` int(11) NULL DEFAULT NULL,
  `VatDungCu` int(11) NULL DEFAULT NULL,
  `HouseRob` int(11) NULL DEFAULT NULL,
  `TuiSo` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `Username`) USING BTREE,
  INDEX `Username`(`Username`(5)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6537 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of accounts
-- ----------------------------

-- ----------------------------
-- Table structure for arrestpoints
-- ----------------------------
DROP TABLE IF EXISTS `arrestpoints`;
CREATE TABLE `arrestpoints`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of arrestpoints
-- ----------------------------

-- ----------------------------
-- Table structure for arrestreports
-- ----------------------------
DROP TABLE IF EXISTS `arrestreports`;
CREATE TABLE `arrestreports`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `copid` int(11) NOT NULL DEFAULT 0,
  `suspectid` int(11) NOT NULL DEFAULT 0,
  `shortreport` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `longreport` varchar(2024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 373 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of arrestreports
-- ----------------------------

-- ----------------------------
-- Table structure for auctions
-- ----------------------------
DROP TABLE IF EXISTS `auctions`;
CREATE TABLE `auctions`  (
  `id` int(11) NOT NULL,
  `BiddingFor` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '(none)',
  `InProgress` int(11) NOT NULL DEFAULT 0,
  `Bid` int(11) NOT NULL DEFAULT 0,
  `Bidder` int(11) NOT NULL DEFAULT 0,
  `Expires` int(11) NOT NULL DEFAULT 0,
  `Wining` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '(none)',
  `Increment` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auctions
-- ----------------------------

-- ----------------------------
-- Table structure for bans
-- ----------------------------
DROP TABLE IF EXISTS `bans`;
CREATE TABLE `bans`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `reason` varchar(156) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_added` datetime NULL DEFAULT NULL,
  `date_unban` datetime NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `link` varchar(156) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `admin` varchar(156) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 658 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of bans
-- ----------------------------

-- ----------------------------
-- Table structure for businesses
-- ----------------------------
DROP TABLE IF EXISTS `businesses`;
CREATE TABLE `businesses`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Unnamed Business',
  `Type` int(11) NOT NULL DEFAULT 0,
  `Value` int(11) NOT NULL DEFAULT 0,
  `OwnerID` int(11) NOT NULL DEFAULT 0,
  `OwnerName` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'None',
  `Months` int(11) NOT NULL DEFAULT 0,
  `SafeBalance` int(11) NOT NULL DEFAULT 0,
  `Inventory` int(11) NOT NULL DEFAULT 0,
  `InventoryCapacity` int(11) NOT NULL DEFAULT 1000,
  `Status` int(11) NOT NULL DEFAULT 1,
  `Level` tinyint(4) NOT NULL DEFAULT 1,
  `LevelProgress` int(11) NOT NULL DEFAULT 0,
  `AutoSale` tinyint(4) NOT NULL DEFAULT 1,
  `OrderDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `OrderAmount` int(11) NOT NULL DEFAULT 0,
  `OrderBy` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `OrderState` int(11) NOT NULL DEFAULT 0,
  `TotalSales` int(11) NOT NULL DEFAULT 0,
  `Bargain` tinyint(4) NOT NULL DEFAULT 0,
  `ExteriorX` float NOT NULL DEFAULT 0,
  `ExteriorY` float NOT NULL DEFAULT 0,
  `ExteriorZ` float NOT NULL DEFAULT 0,
  `ExteriorA` float NOT NULL DEFAULT 0,
  `InteriorX` float NOT NULL DEFAULT 0,
  `InteriorY` float NOT NULL DEFAULT 0,
  `InteriorZ` float NOT NULL DEFAULT 0,
  `InteriorA` float NOT NULL DEFAULT 0,
  `Interior` tinyint(4) NOT NULL DEFAULT 0,
  `CustomExterior` int(11) NOT NULL DEFAULT 0,
  `CustomInterior` int(11) NOT NULL DEFAULT 0,
  `SupplyPointX` float NOT NULL DEFAULT 0,
  `SupplyPointY` float NOT NULL DEFAULT 0,
  `SupplyPointZ` float NOT NULL DEFAULT 0,
  `Item1Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item2Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item3Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item4Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item5Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item6Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item7Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item8Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item9Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item10Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item11Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item12Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item13Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item14Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item15Price` mediumint(9) NOT NULL DEFAULT 0,
  `Item16Price` mediumint(9) NOT NULL DEFAULT 0,
  `Item17Price` mediumint(9) NOT NULL DEFAULT 0,
  `Item18Price` mediumint(9) NOT NULL DEFAULT 0,
  `Rank0Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank1Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank2Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank3Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank4Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank5Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 9,
  `Pay` tinyint(4) NOT NULL DEFAULT 0,
  `GasPrice` float UNSIGNED NOT NULL DEFAULT 0,
  `MinInviteRank` tinyint(4) NOT NULL DEFAULT 4,
  `MinSupplyRank` tinyint(4) NOT NULL DEFAULT 5,
  `MinGiveRankRank` tinyint(4) NOT NULL DEFAULT 5,
  `MinSafeRank` tinyint(4) NOT NULL DEFAULT 5,
  `GasPump1PosX` float NOT NULL DEFAULT 0,
  `GasPump1PosY` float NOT NULL DEFAULT 0,
  `GasPump1PosZ` float NOT NULL DEFAULT 0,
  `GasPump1Angle` float NOT NULL DEFAULT 0,
  `GasPump1Model` float NOT NULL DEFAULT 0,
  `GasPump1Capacity` float NOT NULL DEFAULT 0,
  `GasPump1Gas` float NOT NULL DEFAULT 0,
  `GasPump2PosX` float NOT NULL DEFAULT 0,
  `GasPump2PosY` float NOT NULL DEFAULT 0,
  `GasPump2PosZ` float NOT NULL DEFAULT 0,
  `GasPump2Angle` float NOT NULL DEFAULT 0,
  `GasPump2Model` float NOT NULL DEFAULT 0,
  `GasPump2Capacity` float NOT NULL DEFAULT 0,
  `GasPump2Gas` float NOT NULL DEFAULT 0,
  `Car0PosX` float NOT NULL DEFAULT 0,
  `Car0PosY` float NOT NULL DEFAULT 0,
  `Car0PosZ` float NOT NULL DEFAULT 0,
  `Car0PosAngle` float NOT NULL DEFAULT 0,
  `Car0ModelId` int(11) NOT NULL DEFAULT 0,
  `Car0Price` int(11) NOT NULL DEFAULT 0,
  `Car1PosX` float NOT NULL DEFAULT 0,
  `Car1PosY` float NOT NULL DEFAULT 0,
  `Car1PosZ` float NOT NULL DEFAULT 0,
  `Car1PosAngle` float NOT NULL DEFAULT 0,
  `Car1ModelId` int(11) NOT NULL DEFAULT 0,
  `Car1Price` int(11) NOT NULL DEFAULT 0,
  `Car2PosX` float NOT NULL DEFAULT 0,
  `Car2PosY` float NOT NULL DEFAULT 0,
  `Car2PosZ` float NOT NULL DEFAULT 0,
  `Car2PosAngle` float NOT NULL DEFAULT 0,
  `Car2ModelId` int(11) NOT NULL DEFAULT 0,
  `Car2Price` int(11) NOT NULL DEFAULT 0,
  `Car3PosX` float NOT NULL DEFAULT 0,
  `Car3PosY` float NOT NULL DEFAULT 0,
  `Car3PosZ` float NOT NULL DEFAULT 0,
  `Car3PosAngle` float NOT NULL DEFAULT 0,
  `Car3ModelId` int(11) NOT NULL DEFAULT 0,
  `Car3Price` int(11) NOT NULL DEFAULT 0,
  `Car1Stock` int(11) NOT NULL DEFAULT 0,
  `Car2Stock` int(11) NOT NULL DEFAULT 0,
  `Car3Stock` int(11) NOT NULL DEFAULT 0,
  `Car1Order` int(11) NOT NULL DEFAULT 0,
  `Car2Order` int(11) NOT NULL DEFAULT 0,
  `Car3Order` int(11) NOT NULL DEFAULT 0,
  `Car4PosX` float NOT NULL DEFAULT 0,
  `Car4PosY` float NOT NULL DEFAULT 0,
  `Car4PosZ` float NOT NULL DEFAULT 0,
  `Car4PosAngle` float NOT NULL DEFAULT 0,
  `Car4ModelId` int(11) NOT NULL DEFAULT 0,
  `Car4Price` int(11) NOT NULL DEFAULT 0,
  `Car5PosX` int(11) NOT NULL DEFAULT 0,
  `Car5PosY` float NOT NULL DEFAULT 0,
  `Car5PosZ` float NOT NULL DEFAULT 0,
  `Car5PosAngle` float NOT NULL DEFAULT 0,
  `Car5ModelId` int(11) NOT NULL DEFAULT 0,
  `Car5Price` int(11) NOT NULL DEFAULT 0,
  `Car6PosX` float NOT NULL DEFAULT 0,
  `Car6PosY` float NOT NULL DEFAULT 0,
  `Car6PosZ` float NOT NULL DEFAULT 0,
  `Car6PosAngle` float NOT NULL DEFAULT 0,
  `Car6ModelId` int(11) NOT NULL DEFAULT 0,
  `Car6Price` int(11) NOT NULL DEFAULT 0,
  `Car7PosX` float NOT NULL DEFAULT 0,
  `Car7PosY` float NOT NULL DEFAULT 0,
  `Car7PosZ` float NOT NULL DEFAULT 0,
  `Car7PosAngle` float NOT NULL DEFAULT 0,
  `Car7ModelId` int(11) NOT NULL DEFAULT 0,
  `Car7Price` int(11) NOT NULL DEFAULT 0,
  `Car8PosX` float NOT NULL DEFAULT 0,
  `Car8PosY` float NOT NULL DEFAULT 0,
  `Car8PosZ` float NOT NULL DEFAULT 0,
  `Car8PosAngle` float NOT NULL DEFAULT 0,
  `Car8ModelId` int(11) NOT NULL DEFAULT 0,
  `Car8Price` int(11) NOT NULL DEFAULT 0,
  `Car9PosX` float NOT NULL DEFAULT 0,
  `Car9PosY` float NOT NULL DEFAULT 0,
  `Car9PosZ` float NOT NULL DEFAULT 0,
  `Car9PosAngle` float NOT NULL DEFAULT 0,
  `Car9ModelId` int(11) NOT NULL DEFAULT 0,
  `Car9Price` int(11) NOT NULL DEFAULT 0,
  `PurchaseX` float NOT NULL DEFAULT 0,
  `PurchaseY` float NOT NULL DEFAULT 0,
  `PurchaseZ` float NOT NULL DEFAULT 0,
  `PurchaseAngle` float NOT NULL DEFAULT 0,
  `TotalProfits` int(11) NOT NULL DEFAULT 0,
  `GymEntryFee` int(11) NOT NULL DEFAULT 0,
  `GymType` int(11) NOT NULL DEFAULT 0,
  `CustomVW` int(11) NOT NULL DEFAULT 0,
  `Grade` int(11) NOT NULL DEFAULT 0,
  `Item19Price` mediumint(9) NOT NULL DEFAULT 0,
  `Item20Price` mediumint(9) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of businesses
-- ----------------------------

-- ----------------------------
-- Table structure for businesssales
-- ----------------------------
DROP TABLE IF EXISTS `businesssales`;
CREATE TABLE `businesssales`  (
  `bID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `BusinessID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Text` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `Price` int(11) NULL DEFAULT 0,
  `Available` int(11) NOT NULL DEFAULT 0,
  `Purchased` int(11) NULL DEFAULT 0,
  `Type` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`bID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of businesssales
-- ----------------------------

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sqlID` int(11) NOT NULL,
  `name` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of contacts
-- ----------------------------

-- ----------------------------
-- Table structure for cp_access
-- ----------------------------
DROP TABLE IF EXISTS `cp_access`;
CREATE TABLE `cp_access`  (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `punish` int(11) NULL DEFAULT 0,
  `refund` int(11) NULL DEFAULT 0,
  `ban` int(11) NULL DEFAULT 0,
  `cplgeneral` int(11) NULL DEFAULT 0,
  `cplstaff` int(11) NULL DEFAULT NULL,
  `cplfaction` int(11) NULL DEFAULT NULL,
  `cplfamily` int(11) NULL DEFAULT NULL,
  `cplcr` int(11) NULL DEFAULT 0,
  `gladmin` int(11) NULL DEFAULT 0,
  `gladmingive` int(11) NULL DEFAULT NULL,
  `gladminpay` int(11) NULL DEFAULT NULL,
  `glban` int(11) NULL DEFAULT NULL,
  `glcontracts` int(11) NULL DEFAULT NULL,
  `glddedit` int(11) NULL DEFAULT NULL,
  `gldmpedit` int(11) NULL DEFAULT NULL,
  `glfaction` int(11) NULL DEFAULT NULL,
  `glfamily` int(11) NULL DEFAULT NULL,
  `glfmembercount` int(11) NULL DEFAULT NULL,
  `glgedit` int(11) NULL DEFAULT NULL,
  `glgifts` int(11) NULL DEFAULT NULL,
  `glhack` int(11) NULL DEFAULT NULL,
  `glhedit` int(11) NULL DEFAULT NULL,
  `glhouse` int(11) NULL DEFAULT NULL,
  `glkick` int(11) NULL DEFAULT NULL,
  `gllicenses` int(11) NULL DEFAULT NULL,
  `glmoderator` int(11) NULL DEFAULT NULL,
  `glmute` int(11) NULL DEFAULT NULL,
  `glpads` int(11) NULL DEFAULT NULL,
  `glpassword` int(11) NULL DEFAULT NULL,
  `glpay` int(11) NULL DEFAULT NULL,
  `glplayervehicle` int(11) NULL DEFAULT NULL,
  `glrpspecial` int(11) NULL DEFAULT NULL,
  `glsecurity` int(11) NULL DEFAULT NULL,
  `glsetvip` int(11) NULL DEFAULT NULL,
  `glshopconfirmedorders` int(11) NULL DEFAULT NULL,
  `glshoplog` int(11) NULL DEFAULT NULL,
  `glshoporders` int(11) NULL DEFAULT NULL,
  `glstats` int(11) NULL DEFAULT NULL,
  `glundercover` int(11) NULL DEFAULT NULL,
  `glvipnamechanges` int(11) NULL DEFAULT NULL,
  `glvipremove` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_access
-- ----------------------------

-- ----------------------------
-- Table structure for cp_admin_notes
-- ----------------------------
DROP TABLE IF EXISTS `cp_admin_notes`;
CREATE TABLE `cp_admin_notes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `details` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `invoke_id` int(11) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `points` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_admin_notes
-- ----------------------------

-- ----------------------------
-- Table structure for cp_cache_email
-- ----------------------------
DROP TABLE IF EXISTS `cp_cache_email`;
CREATE TABLE `cp_cache_email`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `email_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_cache_email
-- ----------------------------

-- ----------------------------
-- Table structure for cp_cache_passreset
-- ----------------------------
DROP TABLE IF EXISTS `cp_cache_passreset`;
CREATE TABLE `cp_cache_passreset`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_cache_passreset
-- ----------------------------

-- ----------------------------
-- Table structure for cp_cache_sec_questions
-- ----------------------------
DROP TABLE IF EXISTS `cp_cache_sec_questions`;
CREATE TABLE `cp_cache_sec_questions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `question` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `answer` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `token` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_cache_sec_questions
-- ----------------------------

-- ----------------------------
-- Table structure for cp_faction
-- ----------------------------
DROP TABLE IF EXISTS `cp_faction`;
CREATE TABLE `cp_faction`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_0` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_2` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_3` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_4` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_5` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_6` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `div_0` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `div_1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `div_2` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `div_3` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `div_4` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `div_5` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `div_6` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `div_7` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_faction
-- ----------------------------

-- ----------------------------
-- Table structure for cp_family
-- ----------------------------
DROP TABLE IF EXISTS `cp_family`;
CREATE TABLE `cp_family`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `leader` int(11) NULL DEFAULT NULL,
  `rank_1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_2` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_3` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_4` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_5` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_6` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_family
-- ----------------------------

-- ----------------------------
-- Table structure for cp_leave
-- ----------------------------
DROP TABLE IF EXISTS `cp_leave`;
CREATE TABLE `cp_leave`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `date_leave` date NULL DEFAULT NULL,
  `date_return` date NULL DEFAULT NULL,
  `reason` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `acceptedby_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_leave
-- ----------------------------

-- ----------------------------
-- Table structure for cp_log_cr
-- ----------------------------
DROP TABLE IF EXISTS `cp_log_cr`;
CREATE TABLE `cp_log_cr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_log_cr
-- ----------------------------

-- ----------------------------
-- Table structure for cp_log_faction
-- ----------------------------
DROP TABLE IF EXISTS `cp_log_faction`;
CREATE TABLE `cp_log_faction`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_log_faction
-- ----------------------------

-- ----------------------------
-- Table structure for cp_log_family
-- ----------------------------
DROP TABLE IF EXISTS `cp_log_family`;
CREATE TABLE `cp_log_family`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_log_family
-- ----------------------------

-- ----------------------------
-- Table structure for cp_log_general
-- ----------------------------
DROP TABLE IF EXISTS `cp_log_general`;
CREATE TABLE `cp_log_general`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_log_general
-- ----------------------------

-- ----------------------------
-- Table structure for cp_log_staff
-- ----------------------------
DROP TABLE IF EXISTS `cp_log_staff`;
CREATE TABLE `cp_log_staff`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_log_staff
-- ----------------------------

-- ----------------------------
-- Table structure for cp_punishment
-- ----------------------------
DROP TABLE IF EXISTS `cp_punishment`;
CREATE TABLE `cp_punishment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NULL DEFAULT NULL,
  `date_added` date NULL DEFAULT NULL,
  `addedby_id` int(11) NULL DEFAULT NULL,
  `reason` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `prison` int(11) NULL DEFAULT NULL,
  `warn` int(11) NULL DEFAULT NULL,
  `fine` int(11) NULL DEFAULT NULL,
  `ban` int(11) NULL DEFAULT NULL,
  `wep_restrict` int(11) NULL DEFAULT NULL,
  `other_punish` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date_issued` date NULL DEFAULT NULL,
  `issuedby_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_punishment
-- ----------------------------

-- ----------------------------
-- Table structure for cp_refund
-- ----------------------------
DROP TABLE IF EXISTS `cp_refund`;
CREATE TABLE `cp_refund`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `money` int(11) NULL DEFAULT 0,
  `materials` int(11) NULL DEFAULT 0,
  `pot` int(11) NULL DEFAULT 0,
  `crack` int(11) NULL DEFAULT 0,
  `boombox` int(11) NULL DEFAULT 0,
  `viptoken` int(11) NULL DEFAULT 0,
  `refund` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `auth` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addedby_id` int(11) NULL DEFAULT NULL,
  `date_added` date NULL DEFAULT NULL,
  `issuedby_id` int(11) NULL DEFAULT NULL,
  `date_issued` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_refund
-- ----------------------------

-- ----------------------------
-- Table structure for cp_shift_blocks
-- ----------------------------
DROP TABLE IF EXISTS `cp_shift_blocks`;
CREATE TABLE `cp_shift_blocks`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shift` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time_start` time NULL DEFAULT NULL,
  `time_end` time NULL DEFAULT NULL,
  `needs_sunday` int(11) NULL DEFAULT 1,
  `needs_monday` int(11) NULL DEFAULT 1,
  `needs_tuesday` int(11) NULL DEFAULT 1,
  `needs_wednesday` int(11) NULL DEFAULT 1,
  `needs_thursday` int(11) NULL DEFAULT 1,
  `needs_friday` int(11) NULL DEFAULT 1,
  `needs_saturday` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_shift_blocks
-- ----------------------------

-- ----------------------------
-- Table structure for cp_shift_leader
-- ----------------------------
DROP TABLE IF EXISTS `cp_shift_leader`;
CREATE TABLE `cp_shift_leader`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_shift_leader
-- ----------------------------

-- ----------------------------
-- Table structure for cp_shifts
-- ----------------------------
DROP TABLE IF EXISTS `cp_shifts`;
CREATE TABLE `cp_shifts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `shift_id` int(11) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `sign_up` datetime NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `bonus` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_shifts
-- ----------------------------

-- ----------------------------
-- Table structure for cp_stat
-- ----------------------------
DROP TABLE IF EXISTS `cp_stat`;
CREATE TABLE `cp_stat`  (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `gtalk` varchar(124) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N/A',
  `paypal` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `points` int(11) NULL DEFAULT 0,
  `shift` int(11) NULL DEFAULT 0,
  `shift_complete` int(11) NULL DEFAULT 0,
  `shift_partcomplete` int(11) NULL DEFAULT 0,
  `shift_missed` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_stat
-- ----------------------------

-- ----------------------------
-- Table structure for cp_weekly_reports
-- ----------------------------
DROP TABLE IF EXISTS `cp_weekly_reports`;
CREATE TABLE `cp_weekly_reports`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `q1` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `q2` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `q3` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `q4` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `q5` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_weekly_reports
-- ----------------------------

-- ----------------------------
-- Table structure for cp_whitelist
-- ----------------------------
DROP TABLE IF EXISTS `cp_whitelist`;
CREATE TABLE `cp_whitelist`  (
  `id` int(11) NOT NULL,
  `username` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `key` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cp_whitelist
-- ----------------------------

-- ----------------------------
-- Table structure for crates
-- ----------------------------
DROP TABLE IF EXISTS `crates`;
CREATE TABLE `crates`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Active` int(11) NOT NULL DEFAULT 0,
  `CrateX` float NOT NULL DEFAULT 0,
  `CrateY` float NOT NULL DEFAULT 0,
  `CrateZ` float NOT NULL DEFAULT 0,
  `GunQuantity` int(11) NOT NULL DEFAULT 50,
  `InVehicle` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `VW` int(11) NOT NULL DEFAULT 0,
  `PlacedBy` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Unknown',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of crates
-- ----------------------------

-- ----------------------------
-- Table structure for ddoors
-- ----------------------------
DROP TABLE IF EXISTS `ddoors`;
CREATE TABLE `ddoors`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Owner` int(11) NOT NULL DEFAULT -1,
  `OwnerName` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Nobody',
  `CustomInterior` int(11) NOT NULL DEFAULT 0,
  `ExteriorVW` int(11) NOT NULL DEFAULT 0,
  `ExteriorInt` int(11) NOT NULL DEFAULT 0,
  `InteriorVW` int(11) NOT NULL DEFAULT 0,
  `InteriorInt` int(11) NOT NULL DEFAULT 0,
  `ExteriorX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorA` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorA` float(10, 5) NOT NULL DEFAULT 0.00000,
  `CustomExterior` int(11) NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 0,
  `Rank` int(11) NOT NULL DEFAULT -1,
  `VIP` int(11) NOT NULL DEFAULT 0,
  `DPC` int(11) NOT NULL DEFAULT 0,
  `Allegiance` int(11) NOT NULL DEFAULT 0,
  `GroupType` int(11) NOT NULL DEFAULT 0,
  `Family` int(11) NOT NULL DEFAULT 0,
  `Faction` int(11) NOT NULL DEFAULT -1,
  `Admin` int(11) NOT NULL DEFAULT 0,
  `Wanted` int(11) NOT NULL DEFAULT 0,
  `VehicleAble` int(11) NOT NULL DEFAULT 0,
  `Color` int(11) NOT NULL DEFAULT 0,
  `PickupModel` int(11) NOT NULL DEFAULT 0,
  `Pass` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'pass',
  `Locked` int(11) NOT NULL DEFAULT 0,
  `Famed` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3001 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ddoors
-- ----------------------------

-- ----------------------------
-- Table structure for ddoors_zin
-- ----------------------------
DROP TABLE IF EXISTS `ddoors_zin`;
CREATE TABLE `ddoors_zin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Owner` int(11) NOT NULL DEFAULT -1,
  `OwnerName` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Nobody',
  `CustomInterior` int(11) NOT NULL DEFAULT 0,
  `ExteriorVW` int(11) NOT NULL DEFAULT 0,
  `ExteriorInt` int(11) NOT NULL DEFAULT 0,
  `InteriorVW` int(11) NOT NULL DEFAULT 0,
  `InteriorInt` int(11) NOT NULL DEFAULT 0,
  `ExteriorX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorA` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorA` float(10, 5) NOT NULL DEFAULT 0.00000,
  `CustomExterior` int(11) NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 0,
  `Rank` int(11) NOT NULL DEFAULT -1,
  `VIP` int(11) NOT NULL DEFAULT 0,
  `DPC` int(11) NOT NULL DEFAULT 0,
  `Allegiance` int(11) NOT NULL DEFAULT 0,
  `GroupType` int(11) NOT NULL DEFAULT 0,
  `Family` int(11) NOT NULL DEFAULT 0,
  `Faction` int(11) NOT NULL DEFAULT -1,
  `Admin` int(11) NOT NULL DEFAULT 0,
  `Wanted` int(11) NOT NULL DEFAULT 0,
  `VehicleAble` int(11) NOT NULL DEFAULT 0,
  `Color` int(11) NOT NULL DEFAULT 0,
  `PickupModel` int(11) NOT NULL DEFAULT 0,
  `Pass` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'pass',
  `Locked` int(11) NOT NULL DEFAULT 0,
  `Famed` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3001 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ddoors_zin
-- ----------------------------

-- ----------------------------
-- Table structure for dedi_april
-- ----------------------------
DROP TABLE IF EXISTS `dedi_april`;
CREATE TABLE `dedi_april`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RewardHours` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of dedi_april
-- ----------------------------

-- ----------------------------
-- Table structure for dm_watchdog
-- ----------------------------
DROP TABLE IF EXISTS `dm_watchdog`;
CREATE TABLE `dm_watchdog`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `reporter` int(11) NOT NULL DEFAULT 0,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `superwatch` tinyint(4) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of dm_watchdog
-- ----------------------------

-- ----------------------------
-- Table structure for dmapicons
-- ----------------------------
DROP TABLE IF EXISTS `dmapicons`;
CREATE TABLE `dmapicons`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MarkerType` int(11) NOT NULL DEFAULT 0,
  `Color` int(11) NOT NULL DEFAULT 0,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 401 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of dmapicons
-- ----------------------------

-- ----------------------------
-- Table structure for factions
-- ----------------------------
DROP TABLE IF EXISTS `factions`;
CREATE TABLE `factions`  (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `Enabled` int(12) NOT NULL DEFAULT 0,
  `Name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'None',
  `LockerPosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `LockerPosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `LockerPosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MOTD` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'None',
  `GovFunded` int(12) NOT NULL DEFAULT 0,
  `Division0Type` int(12) NOT NULL DEFAULT 0,
  `Division0Name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Division0Rankname0` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division0Rankname1` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division0Rankname2` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division0Rankname3` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division0Rankname4` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division0Rankname5` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division0Rankname6` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division1Type` int(12) NOT NULL DEFAULT 0,
  `Division1Name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Division1Rankname0` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division1Rankname1` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division1Rankname2` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division1Rankname3` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division1Rankname4` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division1Rankname5` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division1Rankname6` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division2Type` int(12) NOT NULL DEFAULT 0,
  `Division2Name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Division2Rankname0` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division2Rankname1` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division2Rankname2` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division2Rankname3` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division2Rankname4` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division2Rankname5` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division2Rankname6` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division3Type` int(12) NOT NULL DEFAULT 0,
  `Division3Name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Division3Rankname0` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division3Rankname1` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division3Rankname2` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division3Rankname3` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division3Rankname4` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division3Rankname5` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division3Rankname6` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division4Type` int(12) NOT NULL DEFAULT 0,
  `Division4Name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Division4Rankname0` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division4Rankname1` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division4Rankname2` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division4Rankname3` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division4Rankname4` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division4Rankname5` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division4Rankname6` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division5Type` int(12) NOT NULL DEFAULT 0,
  `Division5Name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Division5Rankname0` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division5Rankname1` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division5Rankname2` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division5Rankname3` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division5Rankname4` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division5Rankname5` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division5Rankname6` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division6Type` int(12) NOT NULL DEFAULT 0,
  `Division6Name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Division6Rankname0` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division6Rankname1` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division6Rankname2` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division6Rankname3` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division6Rankname4` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division6Rankname5` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division6Rankname6` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division7Type` int(12) NOT NULL DEFAULT 0,
  `Division7Name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Division7Rankname0` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division7Rankname1` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division7Rankname2` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division7Rankname3` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division7Rankname4` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division7Rankname5` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Division7Rankname6` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'norank',
  `Vehicle0Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle0Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle0Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle0Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle0x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle0y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle0z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle0a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle1Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle1Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle1Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle1Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle1x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle1y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle1z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle1a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle2Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle2Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle2Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle2Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle2x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle2y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle2z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle2a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle3Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle3Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle3Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle3Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle3x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle3y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle3z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle3a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle4Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle4Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle4Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle4Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle4x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle4y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle4z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle4a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle5Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle5Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle5Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle5Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle5x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle5y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle5z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle5a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle6Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle6Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle6Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle6Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle6x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle6y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle6z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle6a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle7Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle7Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle7Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle7Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle7x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle7y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle7z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle7a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle8Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle8Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle8Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle8Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle8x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle8y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle8z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle8a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle9Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle9Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle9Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle9Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle9x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle9y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle9z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle9a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle10Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle10Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle10Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle10Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle10x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle10y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle10z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle10a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle11Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle11Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle11Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle11Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle11x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle11y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle11z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle11a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle12Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle12Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle12Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle12Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle12x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle12y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle12z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle12a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle13Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle13Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle13Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle13Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle13x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle13y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle13z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle13a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle14Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle14Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle14Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle14Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle14x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle14y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle14z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle14a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle15Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle15Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle15Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle15Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle15x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle15y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle15z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle15a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle16Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle16Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle16Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle16Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle16x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle16y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle16z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle16a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle17Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle17Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle17Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle17Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle17x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle17y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle17z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle17a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle18Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle18Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle18Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle18Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle18x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle18y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle18z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle18a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle19Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle19Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle19Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle19Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle19x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle19y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle19z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle19a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle20Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle20Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle20Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle20Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle20x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle20y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle20z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle20a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle21Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle21Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle21Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle21Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle21x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle21y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle21z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle21a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle22Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle22Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle22Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle22Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle22x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle22y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle22z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle22a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle23Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle23Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle23Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle23Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle23x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle23y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle23z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle23a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle24Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle24Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle24Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle24Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle24x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle24y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle24z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle24a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle25Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle25Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle25Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle25Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle25x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle25y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle25z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle25a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle26Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle26Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle26Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle26Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle26x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle26y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle26z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle26a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle27Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle27Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle27Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle27Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle27x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle27y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle27z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle27a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle28Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle28Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle28Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle28Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle28x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle28y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle28z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle28a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle29Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle29Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle29Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle29Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle29x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle29y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle29z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle29a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle30Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle30Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle30Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle30Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle30x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle30y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle30z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle30a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle31Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle31Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle31Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle31Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle31x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle31y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle31z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle31a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle32Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle32Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle32Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle32Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle32x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle32y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle32z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle32a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle33Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle33Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle33Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle33Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle33x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle33y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle33z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle33a` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle34Model` int(11) NOT NULL DEFAULT 0,
  `Vehicle34Color1` int(11) NOT NULL DEFAULT 0,
  `Vehicle34Color2` int(11) NOT NULL DEFAULT 0,
  `Vehicle34Division` int(11) NOT NULL DEFAULT 0,
  `Vehicle34x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle34y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle34z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Vehicle34a` float(10, 5) NOT NULL DEFAULT 0.00000,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of factions
-- ----------------------------

-- ----------------------------
-- Table structure for families
-- ----------------------------
DROP TABLE IF EXISTS `families`;
CREATE TABLE `families`  (
  `ID` tinyint(1) NOT NULL AUTO_INCREMENT,
  `Taken` tinyint(1) NOT NULL DEFAULT 0,
  `Name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `MOTD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Leader` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Bank` int(11) NOT NULL DEFAULT 0,
  `Cash` int(11) NOT NULL DEFAULT 0,
  `FamilyUSafe` int(11) NOT NULL DEFAULT 0,
  `FamilySafeX` float(11, 5) NOT NULL DEFAULT 0.00000,
  `FamilySafeY` float(11, 5) NOT NULL DEFAULT 0.00000,
  `FamilySafeZ` float(11, 5) NOT NULL DEFAULT 0.00000,
  `FamilySafeVW` int(11) NOT NULL DEFAULT -1,
  `FamilySafeInt` int(11) NOT NULL DEFAULT -1,
  `Pot` int(11) NOT NULL DEFAULT 0,
  `Crack` int(11) NOT NULL DEFAULT 0,
  `Mats` int(11) NOT NULL DEFAULT 0,
  `Rank0` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Newb',
  `Rank1` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Outsider',
  `Rank2` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Associate',
  `Rank3` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Soldier',
  `Rank4` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Capo',
  `Rank5` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Underboss',
  `Rank6` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Godfather',
  `Members` smallint(6) NOT NULL DEFAULT 0,
  `MaxSkins` tinyint(4) NOT NULL DEFAULT 0,
  `Skin1` int(11) NOT NULL DEFAULT 0,
  `Skin2` int(11) NOT NULL DEFAULT 0,
  `Skin3` int(11) NOT NULL DEFAULT 0,
  `Skin4` int(11) NOT NULL DEFAULT 0,
  `Skin5` int(11) NOT NULL DEFAULT 0,
  `Skin6` int(11) NOT NULL DEFAULT 0,
  `Skin7` int(11) NOT NULL DEFAULT 0,
  `Skin8` int(11) NOT NULL DEFAULT 0,
  `Color` int(11) NOT NULL DEFAULT 0,
  `TurfTokens` int(11) NOT NULL DEFAULT 0,
  `Gun1` tinyint(4) NOT NULL DEFAULT 0,
  `Gun2` tinyint(4) NOT NULL DEFAULT 0,
  `Gun3` tinyint(4) NOT NULL DEFAULT 0,
  `Gun4` tinyint(4) NOT NULL DEFAULT 0,
  `Gun5` tinyint(4) NOT NULL DEFAULT 0,
  `Gun6` tinyint(4) NOT NULL DEFAULT 0,
  `Gun7` tinyint(4) NOT NULL DEFAULT 0,
  `Gun8` tinyint(4) NOT NULL DEFAULT 0,
  `Gun9` tinyint(4) NOT NULL DEFAULT 0,
  `Gun10` tinyint(4) NOT NULL DEFAULT 0,
  `ExteriorX` float(11, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorY` float(11, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorZ` float(11, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorA` float(11, 5) NOT NULL DEFAULT 0.00000,
  `InteriorX` float(11, 5) NOT NULL DEFAULT 0.00000,
  `InteriorY` float(11, 5) NOT NULL DEFAULT 0.00000,
  `InteriorZ` float(11, 5) NOT NULL DEFAULT 0.00000,
  `InteriorA` float(11, 5) NOT NULL DEFAULT 0.00000,
  `VW` int(11) NOT NULL DEFAULT 0,
  `INT` int(11) NOT NULL DEFAULT 0,
  `CustomInterior` int(11) NOT NULL DEFAULT 0,
  `Division0` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'none',
  `Division1` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'none',
  `Division2` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'none',
  `Division3` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'none',
  `Division4` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'none',
  `Heroin` int(11) NOT NULL DEFAULT 0,
  `GtObject` int(11) NOT NULL DEFAULT 1490,
  `MOTD1` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `MOTD2` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `MOTD3` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `fontface` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Arial',
  `fontsize` int(11) NOT NULL DEFAULT 24,
  `bold` int(11) NOT NULL DEFAULT 0,
  `fontcolor` int(11) NOT NULL DEFAULT -1,
  `backcolor` int(11) NOT NULL DEFAULT 0,
  `text` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Preview',
  `gtUsed` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of families
-- ----------------------------

-- ----------------------------
-- Table structure for flags
-- ----------------------------
DROP TABLE IF EXISTS `flags`;
CREATE TABLE `flags`  (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `issuer` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `flag` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 160 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of flags
-- ----------------------------

-- ----------------------------
-- Table structure for gangtags
-- ----------------------------
DROP TABLE IF EXISTS `gangtags`;
CREATE TABLE `gangtags`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posx` float(11, 4) NOT NULL DEFAULT 0.0000,
  `posy` float(11, 4) NOT NULL DEFAULT 0.0000,
  `posz` float(11, 4) NOT NULL DEFAULT 0.0000,
  `posrx` float(11, 4) NOT NULL DEFAULT 0.0000,
  `posry` float(11, 4) NOT NULL DEFAULT 0.0000,
  `posrz` float(11, 4) NOT NULL DEFAULT 0.0000,
  `objectid` int(11) NOT NULL DEFAULT 1490,
  `vw` int(11) NOT NULL DEFAULT 0,
  `interior` int(11) NOT NULL DEFAULT 0,
  `family` int(11) NOT NULL DEFAULT 255,
  `used` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 151 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of gangtags
-- ----------------------------

-- ----------------------------
-- Table structure for gates
-- ----------------------------
DROP TABLE IF EXISTS `gates`;
CREATE TABLE `gates`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HID` int(11) NOT NULL DEFAULT -1,
  `Speed` float NOT NULL DEFAULT 10,
  `Range` float NOT NULL DEFAULT 10,
  `Model` int(11) NOT NULL DEFAULT 18631,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `Pass` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `NguoiXay` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NguoiSoHuu` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `RotX` float NOT NULL DEFAULT 0,
  `RotY` float NOT NULL DEFAULT 0,
  `RotZ` float NOT NULL DEFAULT 0,
  `PosXM` float NOT NULL DEFAULT 0,
  `PosYM` float NOT NULL DEFAULT 0,
  `PosZM` float NOT NULL DEFAULT 0,
  `RotXM` float NOT NULL DEFAULT 0,
  `RotYM` float NOT NULL DEFAULT 0,
  `RotZM` float NOT NULL DEFAULT 0,
  `Allegiance` int(11) NOT NULL DEFAULT 0,
  `GroupType` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT -1,
  `FamilyID` int(11) NOT NULL DEFAULT -1,
  `RenderHQ` int(11) NOT NULL DEFAULT 1,
  `Timer` int(11) NOT NULL DEFAULT 0,
  `Automate` int(11) NOT NULL DEFAULT 0,
  `Locked` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1779 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of gates
-- ----------------------------

-- ----------------------------
-- Table structure for gates_bug
-- ----------------------------
DROP TABLE IF EXISTS `gates_bug`;
CREATE TABLE `gates_bug`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HID` int(11) NOT NULL DEFAULT -1,
  `Speed` float NOT NULL DEFAULT 10,
  `Range` float NOT NULL DEFAULT 10,
  `Model` int(11) NOT NULL DEFAULT 18631,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `Pass` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `RotX` float NOT NULL DEFAULT 0,
  `RotY` float NOT NULL DEFAULT 0,
  `RotZ` float NOT NULL DEFAULT 0,
  `PosXM` float NOT NULL DEFAULT 0,
  `PosYM` float NOT NULL DEFAULT 0,
  `PosZM` float NOT NULL DEFAULT 0,
  `RotXM` float NOT NULL DEFAULT 0,
  `RotYM` float NOT NULL DEFAULT 0,
  `RotZM` float NOT NULL DEFAULT 0,
  `Allegiance` int(11) NOT NULL DEFAULT 0,
  `GroupType` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT -1,
  `FamilyID` int(11) NOT NULL DEFAULT -1,
  `RenderHQ` int(11) NOT NULL DEFAULT 1,
  `Timer` int(11) NOT NULL DEFAULT 0,
  `Automate` int(11) NOT NULL DEFAULT 0,
  `Locked` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1779 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of gates_bug
-- ----------------------------

-- ----------------------------
-- Table structure for giftbox
-- ----------------------------
DROP TABLE IF EXISTS `giftbox`;
CREATE TABLE `giftbox`  (
  `dgMoney0` int(11) NULL DEFAULT 0,
  `dgFirework0` int(11) NULL DEFAULT 0,
  `dgGVIP0` int(11) NULL DEFAULT 0,
  `dgSVIP0` int(11) NULL DEFAULT 0,
  `dgGVIPEx0` int(11) NULL DEFAULT 0,
  `dgSVIPEx0` int(11) NULL DEFAULT 0,
  `dgCarSlot0` int(11) NULL DEFAULT 0,
  `dgToySlot0` int(11) NULL DEFAULT 0,
  `dgArmor0` int(11) NULL DEFAULT 0,
  `dgFirstaid0` int(11) NULL DEFAULT 0,
  `dgRimKit0` int(11) NULL DEFAULT 0,
  `dgDDFlag0` int(11) NULL DEFAULT 0,
  `dgGateFlag0` int(11) NULL DEFAULT 0,
  `dgCredits0` int(11) NULL DEFAULT 0,
  `dgPriorityAd0` int(11) NULL DEFAULT 0,
  `dgHealthNArmor0` int(11) NULL DEFAULT 0,
  `dgGiftReset0` int(11) NULL DEFAULT 0,
  `dgMaterial0` int(11) NULL DEFAULT 0,
  `dgWarning0` int(11) NULL DEFAULT 0,
  `dgPot0` int(11) NULL DEFAULT 0,
  `dgCrack0` int(11) NULL DEFAULT 0,
  `dgPaintballToken0` int(11) NULL DEFAULT 0,
  `dgVIPToken0` int(11) NULL DEFAULT 0,
  `dgRespectPoint0` int(11) NULL DEFAULT 0,
  `dgCarVoucher0` int(11) NULL DEFAULT 0,
  `dgBuddyInvite0` int(11) NULL DEFAULT 0,
  `dgLaser0` int(11) NULL DEFAULT 0,
  `dgCustomToy0` int(11) NULL DEFAULT 0,
  `dgAdmuteReset0` int(11) NULL DEFAULT 0,
  `dgNewbieMuteReset0` int(11) NULL DEFAULT 0,
  `dgRestrictedCarVoucher0` int(11) NULL DEFAULT 0,
  `dgPlatinumVIPVoucher0` int(11) NULL DEFAULT 0,
  `dgMoney1` int(11) NULL DEFAULT 0,
  `dgFirework1` int(11) NULL DEFAULT 0,
  `dgGVIP1` int(11) NULL DEFAULT 0,
  `dgSVIP1` int(11) NULL DEFAULT 0,
  `dgGVIPEx1` int(11) NULL DEFAULT 0,
  `dgSVIPEx1` int(11) NULL DEFAULT 0,
  `dgCarSlot1` int(11) NULL DEFAULT 0,
  `dgToySlot1` int(11) NULL DEFAULT 0,
  `dgArmor1` int(11) NULL DEFAULT 0,
  `dgFirstaid1` int(11) NULL DEFAULT 0,
  `dgRimKit1` int(11) NULL DEFAULT 0,
  `dgDDFlag1` int(11) NULL DEFAULT 0,
  `dgGateFlag1` int(11) NULL DEFAULT 0,
  `dgCredits1` int(11) NULL DEFAULT 0,
  `dgPriorityAd1` int(11) NULL DEFAULT 0,
  `dgHealthNArmor1` int(11) NULL DEFAULT 0,
  `dgGiftReset1` int(11) NULL DEFAULT 0,
  `dgMaterial1` int(11) NULL DEFAULT 0,
  `dgWarning1` int(11) NULL DEFAULT 0,
  `dgPot1` int(11) NULL DEFAULT 0,
  `dgCrack1` int(11) NULL DEFAULT 0,
  `dgPaintballToken1` int(11) NULL DEFAULT 0,
  `dgVIPToken1` int(11) NULL DEFAULT 0,
  `dgRespectPoint1` int(11) NULL DEFAULT 0,
  `dgCarVoucher1` int(11) NULL DEFAULT 0,
  `dgBuddyInvite1` int(11) NULL DEFAULT 0,
  `dgLaser1` int(11) NULL DEFAULT 0,
  `dgCustomToy1` int(11) NULL DEFAULT 0,
  `dgAdmuteReset1` int(11) NULL DEFAULT 0,
  `dgNewbieMuteReset1` int(11) NULL DEFAULT 0,
  `dgRestrictedCarVoucher1` int(11) NULL DEFAULT 0,
  `dgPlatinumVIPVoucher1` int(11) NULL DEFAULT 0,
  `dgMoney2` int(11) NULL DEFAULT 0,
  `dgFirework2` int(11) NULL DEFAULT 0,
  `dgGVIP2` int(11) NULL DEFAULT 0,
  `dgSVIP2` int(11) NULL DEFAULT 0,
  `dgGVIPEx2` int(11) NULL DEFAULT 0,
  `dgSVIPEx2` int(11) NULL DEFAULT 0,
  `dgCarSlot2` int(11) NULL DEFAULT 0,
  `dgToySlot2` int(11) NULL DEFAULT 0,
  `dgArmor2` int(11) NULL DEFAULT 0,
  `dgFirstaid2` int(11) NULL DEFAULT 0,
  `dgRimKit2` int(11) NULL DEFAULT 0,
  `dgDDFlag2` int(11) NULL DEFAULT 0,
  `dgGateFlag2` int(11) NULL DEFAULT 0,
  `dgCredits2` int(11) NULL DEFAULT 0,
  `dgPriorityAd2` int(11) NULL DEFAULT 0,
  `dgHealthNArmor2` int(11) NULL DEFAULT 0,
  `dgGiftReset2` int(11) NULL DEFAULT 0,
  `dgMaterial2` int(11) NULL DEFAULT 0,
  `dgWarning2` int(11) NULL DEFAULT 0,
  `dgPot2` int(11) NULL DEFAULT 0,
  `dgCrack2` int(11) NULL DEFAULT 0,
  `dgPaintballToken2` int(11) NULL DEFAULT 0,
  `dgVIPToken2` int(11) NULL DEFAULT 0,
  `dgRespectPoint2` int(11) NULL DEFAULT 0,
  `dgCarVoucher2` int(11) NULL DEFAULT 0,
  `dgBuddyInvite2` int(11) NULL DEFAULT 0,
  `dgLaser2` int(11) NULL DEFAULT 0,
  `dgCustomToy2` int(11) NULL DEFAULT 0,
  `dgAdmuteReset2` int(11) NULL DEFAULT 0,
  `dgNewbieMuteReset2` int(11) NULL DEFAULT 0,
  `dgRestrictedCarVoucher2` int(11) NULL DEFAULT 0,
  `dgPlatinumVIPVoucher2` int(11) NULL DEFAULT 0,
  `dgMoney3` int(11) NULL DEFAULT 0,
  `dgRimKit3` int(11) NULL DEFAULT 0,
  `dgFirework3` int(11) NULL DEFAULT 0,
  `dgGVIP3` int(11) NULL DEFAULT 0,
  `dgGVIPEx3` int(11) NULL DEFAULT 0,
  `dgSVIP3` int(11) NULL DEFAULT 0,
  `dgSVIPEx3` int(11) NULL DEFAULT 0,
  `dgCarSlot3` int(11) NULL DEFAULT 0,
  `dgToySlot3` int(11) NULL DEFAULT 0,
  `dgArmor3` int(11) NULL DEFAULT 0,
  `dgFirstaid3` int(11) NULL DEFAULT 0,
  `dgDDFlag3` int(11) NULL DEFAULT 0,
  `dgGateFlag3` int(11) NULL DEFAULT 0,
  `dgCredits3` int(11) NULL DEFAULT 0,
  `dgPriorityAd3` int(11) NULL DEFAULT 0,
  `dgHealthNArmor3` int(11) NULL DEFAULT 0,
  `dgGiftReset3` int(11) NULL DEFAULT 0,
  `dgMaterial3` int(11) NULL DEFAULT 0,
  `dgWarning3` int(11) NULL DEFAULT 0,
  `dgPot3` int(11) NULL DEFAULT 0,
  `dgCrack3` int(11) NULL DEFAULT 0,
  `dgPaintballToken3` int(11) NULL DEFAULT 0,
  `dgVIPToken3` int(11) NULL DEFAULT 0,
  `dgRespectPoint3` int(11) NULL DEFAULT 0,
  `dgCarVoucher3` int(11) NULL DEFAULT 0,
  `dgBuddyInvite3` int(11) NULL DEFAULT 0,
  `dgLaser3` int(11) NULL DEFAULT 0,
  `dgCustomToy3` int(11) NULL DEFAULT 0,
  `dgAdmuteReset3` int(11) NULL DEFAULT 0,
  `dgNewbieMuteReset3` int(11) NULL DEFAULT 0,
  `dgRestrictedCarVoucher3` int(11) NULL DEFAULT 0,
  `dgPlatinumVIPVoucher3` int(11) NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of giftbox
-- ----------------------------

-- ----------------------------
-- Table structure for groupbans
-- ----------------------------
DROP TABLE IF EXISTS `groupbans`;
CREATE TABLE `groupbans`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TypeBan` int(11) NOT NULL DEFAULT -1,
  `PlayerID` int(11) NOT NULL DEFAULT -1,
  `BanDate` datetime NOT NULL DEFAULT '2001-01-12 00:00:00',
  `GroupBan` int(11) NOT NULL DEFAULT -1,
  `BannedBy` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `BanReason` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of groupbans
-- ----------------------------

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` tinyint(4) NOT NULL DEFAULT 0,
  `Name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `MOTD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Allegiance` tinyint(4) NOT NULL DEFAULT 0,
  `Bug` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `Radio` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `DeptRadio` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `GovAnnouncement` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `SpikeStrips` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `Barricades` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `Cones` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `Flares` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `Barrels` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `FreeNameChange` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `CrateIslandAccess` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `DutyColour` mediumint(8) UNSIGNED NOT NULL DEFAULT 16777215,
  `RadioColour` mediumint(8) UNSIGNED NOT NULL DEFAULT 16777215,
  `Budget` int(11) NOT NULL DEFAULT 0,
  `BudgetPayment` int(11) NOT NULL DEFAULT 0,
  `Stock` int(11) NOT NULL DEFAULT 0,
  `LockerCostType` int(11) NOT NULL,
  `CrateX` float NOT NULL DEFAULT 0,
  `CrateY` float NOT NULL DEFAULT 0,
  `CrateZ` float NOT NULL DEFAULT 0,
  `Rank0` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank1` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank2` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank3` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank4` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank5` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank6` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank7` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank8` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank9` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank10` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank11` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank12` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank13` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank14` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank0Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank1Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank2Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank3Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank4Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank5Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank6Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank7Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank8Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank9Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank10Pay` mediumint(9) NOT NULL DEFAULT 0,
  `Rank11Pay` mediumint(9) NOT NULL DEFAULT 0,
  `Rank12Pay` mediumint(9) NOT NULL DEFAULT 0,
  `Rank13Pay` mediumint(9) NOT NULL DEFAULT 0,
  `Rank14Pay` mediumint(9) NOT NULL DEFAULT 0,
  `Div0` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Div1` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Div2` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Div3` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Div4` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Div5` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Div6` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Div7` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Div8` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Div9` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Div10` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Gun0` tinyint(4) NOT NULL,
  `Cost0` int(11) NOT NULL,
  `Gun1` tinyint(4) NOT NULL DEFAULT 0,
  `Cost1` int(11) NOT NULL DEFAULT 0,
  `Gun2` tinyint(4) NOT NULL DEFAULT 0,
  `Cost2` int(11) NOT NULL DEFAULT 0,
  `Gun3` tinyint(4) NOT NULL DEFAULT 0,
  `Cost3` int(11) NOT NULL DEFAULT 0,
  `Gun4` tinyint(4) NOT NULL DEFAULT 0,
  `Cost4` int(11) NOT NULL DEFAULT 0,
  `Gun5` tinyint(4) NOT NULL DEFAULT 0,
  `Cost5` int(11) NOT NULL DEFAULT 0,
  `Gun6` tinyint(4) NOT NULL DEFAULT 0,
  `Cost6` int(11) NOT NULL DEFAULT 0,
  `Gun7` tinyint(4) NOT NULL DEFAULT 0,
  `Cost7` int(11) NOT NULL DEFAULT 0,
  `Gun8` tinyint(4) NOT NULL DEFAULT 0,
  `Cost8` int(11) NOT NULL DEFAULT 0,
  `Gun9` tinyint(4) NOT NULL DEFAULT 0,
  `Cost9` int(11) NOT NULL DEFAULT 0,
  `Gun10` tinyint(4) NOT NULL DEFAULT 0,
  `Cost10` int(11) NOT NULL DEFAULT 0,
  `Gun11` tinyint(4) NOT NULL DEFAULT 0,
  `Cost11` int(11) NOT NULL DEFAULT 0,
  `Gun12` tinyint(4) NOT NULL DEFAULT 0,
  `Cost12` int(11) NOT NULL DEFAULT 0,
  `Gun13` tinyint(4) NOT NULL DEFAULT 0,
  `Cost13` int(11) NOT NULL DEFAULT 0,
  `Gun14` tinyint(4) NOT NULL DEFAULT 0,
  `Cost14` int(11) NOT NULL DEFAULT 0,
  `Gun15` tinyint(4) NOT NULL DEFAULT 0,
  `Cost15` int(11) NOT NULL DEFAULT 0,
  `Gun16` int(11) NOT NULL DEFAULT 0,
  `Cost16` int(11) NOT NULL DEFAULT 0,
  `CratesOrder` int(11) NOT NULL DEFAULT 0,
  `CrateIsland` int(11) NOT NULL DEFAULT 255,
  `IntRadio` int(11) NOT NULL DEFAULT 255,
  `GarageX` float(11, 0) NOT NULL DEFAULT 0,
  `GarageY` float(11, 0) NOT NULL DEFAULT 0,
  `GarageZ` float(11, 0) NOT NULL DEFAULT 0,
  `TS_Money` int(11) NULL DEFAULT 0,
  `TS_VatLieu` int(11) NULL DEFAULT 0,
  `TS_Credits` int(11) NULL DEFAULT 0,
  `TS_Pot` int(11) NULL DEFAULT 0,
  `TS_Crack` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of groups
-- ----------------------------

-- ----------------------------
-- Table structure for groupvehs
-- ----------------------------
DROP TABLE IF EXISTS `groupvehs`;
CREATE TABLE `groupvehs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SpawnedID` int(11) NOT NULL DEFAULT 65535,
  `vDisabled` tinyint(4) NOT NULL DEFAULT 0,
  `gID` int(11) NOT NULL DEFAULT -1,
  `gDivID` int(11) NOT NULL DEFAULT 0,
  `vModel` int(11) NOT NULL DEFAULT 0,
  `vPlate` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `vMaxHealth` float NOT NULL DEFAULT 1000,
  `vFuel` int(11) NOT NULL DEFAULT 100,
  `vType` int(11) NOT NULL DEFAULT 0,
  `vLoadMax` int(11) NOT NULL DEFAULT 2,
  `vCol1` int(11) NOT NULL DEFAULT 0,
  `vCol2` int(11) NOT NULL DEFAULT 0,
  `vX` float NOT NULL DEFAULT 0,
  `vY` float NOT NULL DEFAULT 0,
  `vZ` float NOT NULL DEFAULT 0,
  `vRotZ` float NOT NULL DEFAULT 0,
  `vUpkeep` int(11) NOT NULL DEFAULT 0,
  `vMod0` int(11) NOT NULL DEFAULT 0,
  `vMod1` int(11) NOT NULL DEFAULT 0,
  `vMod2` int(11) NOT NULL DEFAULT 0,
  `vMod3` int(11) NOT NULL DEFAULT 0,
  `vMod4` int(11) NOT NULL DEFAULT 0,
  `vMod5` int(11) NOT NULL DEFAULT 0,
  `vMod6` int(11) NOT NULL DEFAULT 0,
  `vMod7` int(11) NOT NULL DEFAULT 0,
  `vMod8` int(11) NOT NULL DEFAULT 0,
  `vMod9` int(11) NOT NULL DEFAULT 0,
  `vMod10` int(11) NOT NULL DEFAULT 0,
  `vMod11` int(11) NOT NULL DEFAULT 0,
  `vMod12` int(11) NOT NULL DEFAULT 0,
  `vMod13` int(11) NOT NULL DEFAULT 0,
  `vMod14` int(11) NOT NULL DEFAULT 0,
  `vAttachedObjectModel1` int(11) NOT NULL DEFAULT 65535,
  `vObjectX1` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectY1` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectZ1` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectRX1` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectRY1` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectRZ1` float(11, 2) NOT NULL DEFAULT 0.00,
  `vAttachedObjectModel2` int(11) NOT NULL DEFAULT 65535,
  `vObjectX2` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectY2` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectZ2` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectRX2` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectRY2` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectRZ2` float(11, 2) NOT NULL DEFAULT 0.00,
  `vVW` int(11) NOT NULL DEFAULT 0,
  `vInt` int(11) NOT NULL DEFAULT 0,
  `rID` int(11) NOT NULL DEFAULT 0,
  `fID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 700 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of groupvehs
-- ----------------------------

-- ----------------------------
-- Table structure for help
-- ----------------------------
DROP TABLE IF EXISTS `help`;
CREATE TABLE `help`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `subtype` int(11) NOT NULL DEFAULT 0,
  `perms` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of help
-- ----------------------------

-- ----------------------------
-- Table structure for hgbackpacks
-- ----------------------------
DROP TABLE IF EXISTS `hgbackpacks`;
CREATE TABLE `hgbackpacks`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `posx` float(20, 0) NOT NULL,
  `posy` float(20, 0) NOT NULL,
  `posz` float(20, 0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of hgbackpacks
-- ----------------------------

-- ----------------------------
-- Table structure for house_closet
-- ----------------------------
DROP TABLE IF EXISTS `house_closet`;
CREATE TABLE `house_closet`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` int(11) NOT NULL,
  `skinid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of house_closet
-- ----------------------------

-- ----------------------------
-- Table structure for houses
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Owned` int(11) NOT NULL DEFAULT 0,
  `Level` int(11) NOT NULL DEFAULT 999,
  `Description` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'High',
  `OwnerID` int(11) NOT NULL DEFAULT -1,
  `OwnerName` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Nobody',
  `Owner` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'No-Owner',
  `ExteriorX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorR` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorR` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExtIW` int(11) NOT NULL DEFAULT 0,
  `ExtVW` int(11) NOT NULL DEFAULT 0,
  `IntIW` int(11) NOT NULL DEFAULT 9,
  `IntVW` int(11) NOT NULL DEFAULT 0,
  `Lock` int(11) NOT NULL DEFAULT 0,
  `Rentable` int(11) NOT NULL DEFAULT 0,
  `RentFee` int(11) NOT NULL DEFAULT 0,
  `Value` int(11) NOT NULL DEFAULT 0,
  `SafeMoney` int(11) NOT NULL DEFAULT 0,
  `Pot` int(11) NOT NULL DEFAULT 0,
  `Crack` int(11) NOT NULL DEFAULT 0,
  `Materials` int(11) NOT NULL DEFAULT 0,
  `Weapons0` int(11) NOT NULL DEFAULT 0,
  `Weapons1` int(11) NOT NULL DEFAULT 0,
  `Weapons2` int(11) NOT NULL DEFAULT 0,
  `Weapons3` int(11) NOT NULL DEFAULT 0,
  `Weapons4` int(11) NOT NULL DEFAULT 0,
  `GLUpgrade` int(11) NOT NULL DEFAULT 0,
  `PickupID` int(11) NOT NULL DEFAULT 0,
  `CustomInterior` int(11) NOT NULL DEFAULT 0,
  `CustomExterior` int(11) NOT NULL DEFAULT 0,
  `ExteriorA` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorA` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MailX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MailY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MailZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MailA` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MailType` tinyint(4) NOT NULL DEFAULT 0,
  `Heroin` int(11) NOT NULL DEFAULT 0,
  `ClosetX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ClosetY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ClosetZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `TrasX` float(10, 5) NOT NULL,
  `TrasY` float(10, 5) NOT NULL,
  `TrasZ` float(10, 5) NOT NULL,
  `TrasA` float(10, 5) NOT NULL,
  `Ammo1` int(11) NOT NULL,
  `Ammo2` int(11) NOT NULL,
  `Ammo3` int(11) NOT NULL,
  `Ammo4` int(11) NOT NULL,
  `AMUpgrade` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3001 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of houses
-- ----------------------------

-- ----------------------------
-- Table structure for houses_zin
-- ----------------------------
DROP TABLE IF EXISTS `houses_zin`;
CREATE TABLE `houses_zin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Owned` int(11) NOT NULL DEFAULT 0,
  `Level` int(11) NOT NULL DEFAULT 999,
  `Description` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'High',
  `OwnerID` int(11) NOT NULL DEFAULT -1,
  `OwnerName` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Nobody',
  `Owner` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'No-Owner',
  `ExteriorX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorR` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorR` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExtIW` int(11) NOT NULL DEFAULT 0,
  `ExtVW` int(11) NOT NULL DEFAULT 0,
  `IntIW` int(11) NOT NULL DEFAULT 9,
  `IntVW` int(11) NOT NULL DEFAULT 0,
  `Lock` int(11) NOT NULL DEFAULT 0,
  `Rentable` int(11) NOT NULL DEFAULT 0,
  `RentFee` int(11) NOT NULL DEFAULT 0,
  `Value` int(11) NOT NULL DEFAULT 0,
  `SafeMoney` int(11) NOT NULL DEFAULT 0,
  `Pot` int(11) NOT NULL DEFAULT 0,
  `Crack` int(11) NOT NULL DEFAULT 0,
  `Materials` int(11) NOT NULL DEFAULT 0,
  `Weapons0` int(11) NOT NULL DEFAULT 0,
  `Weapons1` int(11) NOT NULL DEFAULT 0,
  `Weapons2` int(11) NOT NULL DEFAULT 0,
  `Weapons3` int(11) NOT NULL DEFAULT 0,
  `Weapons4` int(11) NOT NULL DEFAULT 0,
  `GLUpgrade` int(11) NOT NULL DEFAULT 0,
  `PickupID` int(11) NOT NULL DEFAULT 0,
  `CustomInterior` int(11) NOT NULL DEFAULT 0,
  `CustomExterior` int(11) NOT NULL DEFAULT 0,
  `ExteriorA` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorA` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MailX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MailY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MailZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MailA` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MailType` tinyint(4) NOT NULL DEFAULT 0,
  `Heroin` int(11) NOT NULL DEFAULT 0,
  `ClosetX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ClosetY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ClosetZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `TrasX` float(10, 5) NOT NULL,
  `TrasY` float(10, 5) NOT NULL,
  `TrasZ` float(10, 5) NOT NULL,
  `TrasA` float(10, 5) NOT NULL,
  `Ammo1` int(11) NOT NULL,
  `Ammo2` int(11) NOT NULL,
  `Ammo3` int(11) NOT NULL,
  `Ammo4` int(11) NOT NULL,
  `AMUpgrade` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3001 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of houses_zin
-- ----------------------------

-- ----------------------------
-- Table structure for humankills
-- ----------------------------
DROP TABLE IF EXISTS `humankills`;
CREATE TABLE `humankills`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of humankills
-- ----------------------------

-- ----------------------------
-- Table structure for impoundpoints
-- ----------------------------
DROP TABLE IF EXISTS `impoundpoints`;
CREATE TABLE `impoundpoints`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of impoundpoints
-- ----------------------------

-- ----------------------------
-- Table structure for ip_bans
-- ----------------------------
DROP TABLE IF EXISTS `ip_bans`;
CREATE TABLE `ip_bans`  (
  `bid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` datetime NOT NULL,
  `reason` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `admin` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1055 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ip_bans
-- ----------------------------

-- ----------------------------
-- Table structure for jobstuff
-- ----------------------------
DROP TABLE IF EXISTS `jobstuff`;
CREATE TABLE `jobstuff`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pId` int(11) NOT NULL,
  `junkmetal` int(11) NOT NULL DEFAULT 0,
  `newcoin` int(11) NOT NULL DEFAULT 0,
  `oldcoin` int(11) NOT NULL DEFAULT 0,
  `brokenwatch` int(11) NOT NULL DEFAULT 0,
  `oldkey` int(11) NOT NULL DEFAULT 0,
  `treasure` int(11) NOT NULL DEFAULT 0,
  `goldwatch` int(11) NOT NULL DEFAULT 0,
  `silvernugget` int(11) NOT NULL DEFAULT 0,
  `goldnugget` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74905 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of jobstuff
-- ----------------------------

-- ----------------------------
-- Table structure for jurisdictions
-- ----------------------------
DROP TABLE IF EXISTS `jurisdictions`;
CREATE TABLE `jurisdictions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT -1,
  `AreaName` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `JurisdictionID` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of jurisdictions
-- ----------------------------

-- ----------------------------
-- Table structure for kills
-- ----------------------------
DROP TABLE IF EXISTS `kills`;
CREATE TABLE `kills`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `killerid` int(11) NOT NULL DEFAULT -1,
  `killedid` int(11) NOT NULL DEFAULT -1,
  `date` datetime NULL DEFAULT NULL,
  `weapon` varchar(56) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1105 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of kills
-- ----------------------------

-- ----------------------------
-- Table structure for kncms_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `kncms_admin_log`;
CREATE TABLE `kncms_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kncms_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for kncms_chats
-- ----------------------------
DROP TABLE IF EXISTS `kncms_chats`;
CREATE TABLE `kncms_chats`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kncms_chats
-- ----------------------------

-- ----------------------------
-- Table structure for kncms_danhmuc
-- ----------------------------
DROP TABLE IF EXISTS `kncms_danhmuc`;
CREATE TABLE `kncms_danhmuc`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kncms_danhmuc
-- ----------------------------

-- ----------------------------
-- Table structure for kncms_giftcode
-- ----------------------------
DROP TABLE IF EXISTS `kncms_giftcode`;
CREATE TABLE `kncms_giftcode`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `giftcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `amount` int(11) NULL DEFAULT NULL,
  `open` int(11) NULL DEFAULT 1,
  `limit` int(11) NULL DEFAULT -1,
  `giftname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kncms_giftcode
-- ----------------------------

-- ----------------------------
-- Table structure for kncms_item
-- ----------------------------
DROP TABLE IF EXISTS `kncms_item`;
CREATE TABLE `kncms_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `amount` int(11) NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kncms_item
-- ----------------------------

-- ----------------------------
-- Table structure for kncms_log
-- ----------------------------
DROP TABLE IF EXISTS `kncms_log`;
CREATE TABLE `kncms_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 383 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kncms_log
-- ----------------------------

-- ----------------------------
-- Table structure for kncms_log_gift
-- ----------------------------
DROP TABLE IF EXISTS `kncms_log_gift`;
CREATE TABLE `kncms_log_gift`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gift_id` int(11) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kncms_log_gift
-- ----------------------------

-- ----------------------------
-- Table structure for kncms_log_rename
-- ----------------------------
DROP TABLE IF EXISTS `kncms_log_rename`;
CREATE TABLE `kncms_log_rename`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cur_coins` int(11) NULL DEFAULT NULL,
  `new_coins` int(11) NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `curname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `newname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kncms_log_rename
-- ----------------------------

-- ----------------------------
-- Table structure for kncms_log_shop
-- ----------------------------
DROP TABLE IF EXISTS `kncms_log_shop`;
CREATE TABLE `kncms_log_shop`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `curcoin` int(11) NULL DEFAULT NULL,
  `newcoin` int(11) NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modelid` int(11) NULL DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kncms_log_shop
-- ----------------------------

-- ----------------------------
-- Table structure for kncms_momo
-- ----------------------------
DROP TABLE IF EXISTS `kncms_momo`;
CREATE TABLE `kncms_momo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sdt` int(11) NULL DEFAULT NULL,
  `sotien` int(11) NULL DEFAULT NULL,
  `noidung` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `mgd` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kncms_momo
-- ----------------------------

-- ----------------------------
-- Table structure for kncms_mp3
-- ----------------------------
DROP TABLE IF EXISTS `kncms_mp3`;
CREATE TABLE `kncms_mp3`  (
  `id` int(11) NOT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kncms_mp3
-- ----------------------------

-- ----------------------------
-- Table structure for kncms_napthe
-- ----------------------------
DROP TABLE IF EXISTS `kncms_napthe`;
CREATE TABLE `kncms_napthe`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `serial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `server_api` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mgd` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kncms_napthe
-- ----------------------------

-- ----------------------------
-- Table structure for kncms_pages
-- ----------------------------
DROP TABLE IF EXISTS `kncms_pages`;
CREATE TABLE `kncms_pages`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `iddanhmuc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kncms_pages
-- ----------------------------

-- ----------------------------
-- Table structure for kncms_settings
-- ----------------------------
DROP TABLE IF EXISTS `kncms_settings`;
CREATE TABLE `kncms_settings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PriceOOC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Fav` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Copyright` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TokenMomo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `SDTMOMO` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `OwnerMOMO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `EnbleMailer` int(11) NULL DEFAULT 0,
  `APIKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `APIID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ServerAPI` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '2',
  `XF_APIKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `XF_APIID` varbinary(255) NULL DEFAULT NULL,
  `PriceRename` int(11) NULL DEFAULT NULL,
  `iframePage` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `iframeDiscord` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Licenses` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kncms_settings
-- ----------------------------

-- ----------------------------
-- Table structure for kncms_toys
-- ----------------------------
DROP TABLE IF EXISTS `kncms_toys`;
CREATE TABLE `kncms_toys`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ooc_price` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `amount` int(11) NULL DEFAULT NULL,
  `modelid` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kncms_toys
-- ----------------------------

-- ----------------------------
-- Table structure for kncms_vehs
-- ----------------------------
DROP TABLE IF EXISTS `kncms_vehs`;
CREATE TABLE `kncms_vehs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `ooc_price` int(11) NULL DEFAULT NULL,
  `amount` int(11) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `model` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kncms_vehs
-- ----------------------------

-- ----------------------------
-- Table structure for leaderboards
-- ----------------------------
DROP TABLE IF EXISTS `leaderboards`;
CREATE TABLE `leaderboards`  (
  `Username` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `seconds` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of leaderboards
-- ----------------------------

-- ----------------------------
-- Table structure for letters
-- ----------------------------
DROP TABLE IF EXISTS `letters`;
CREATE TABLE `letters`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Sender_Id` int(11) NULL DEFAULT NULL,
  `Receiver_Id` int(11) NULL DEFAULT NULL,
  `Date` datetime NULL DEFAULT NULL,
  `Message` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Notify` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Delivery_Min` int(11) NULL DEFAULT NULL,
  `Read` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of letters
-- ----------------------------

-- ----------------------------
-- Table structure for lockers
-- ----------------------------
DROP TABLE IF EXISTS `lockers`;
CREATE TABLE `lockers`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Group_ID` int(11) NOT NULL DEFAULT -1,
  `Locker_ID` int(11) NOT NULL,
  `LockerX` float NOT NULL DEFAULT 0,
  `LockerY` float NOT NULL DEFAULT 0,
  `LockerZ` float NOT NULL DEFAULT 0,
  `LockerVW` int(11) NOT NULL DEFAULT 0,
  `LockerShare` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 504 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of lockers
-- ----------------------------

-- ----------------------------
-- Table structure for lockers_zin
-- ----------------------------
DROP TABLE IF EXISTS `lockers_zin`;
CREATE TABLE `lockers_zin`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Group_ID` int(11) NOT NULL DEFAULT -1,
  `Locker_ID` int(11) NOT NULL,
  `LockerX` float NOT NULL DEFAULT 0,
  `LockerY` float NOT NULL DEFAULT 0,
  `LockerZ` float NOT NULL DEFAULT 0,
  `LockerVW` int(11) NOT NULL DEFAULT 0,
  `LockerShare` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of lockers_zin
-- ----------------------------

-- ----------------------------
-- Table structure for login_strikes
-- ----------------------------
DROP TABLE IF EXISTS `login_strikes`;
CREATE TABLE `login_strikes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of login_strikes
-- ----------------------------

-- ----------------------------
-- Table structure for lotto
-- ----------------------------
DROP TABLE IF EXISTS `lotto`;
CREATE TABLE `lotto`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of lotto
-- ----------------------------

-- ----------------------------
-- Table structure for mailboxes
-- ----------------------------
DROP TABLE IF EXISTS `mailboxes`;
CREATE TABLE `mailboxes`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `Model` int(11) NOT NULL DEFAULT 3407,
  `PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Angle` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mailboxes
-- ----------------------------

-- ----------------------------
-- Table structure for mdc
-- ----------------------------
DROP TABLE IF EXISTS `mdc`;
CREATE TABLE `mdc`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `issuer` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `crime` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` tinyint(4) NULL DEFAULT 1,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 742 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mdc
-- ----------------------------

-- ----------------------------
-- Table structure for misc
-- ----------------------------
DROP TABLE IF EXISTS `misc`;
CREATE TABLE `misc`  (
  `gMOTD` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `aMOTD` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vMOTD` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cMOTD` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pMOTD` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ShopTechPay` float(11, 1) NOT NULL DEFAULT 0.0,
  `Safe` int(11) NOT NULL DEFAULT 0,
  `TicketsSold` int(11) NOT NULL DEFAULT 0,
  `GiftCode` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'off',
  `GiftCodeBypass` int(11) NOT NULL DEFAULT 0,
  `TotalCitizens` int(11) NOT NULL DEFAULT 0,
  `TRCitizens` int(11) NOT NULL DEFAULT 0,
  `SecurityCode` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ShopClosed` int(11) NOT NULL DEFAULT 0,
  `RimMod` int(11) NOT NULL DEFAULT 0,
  `CarVoucher` int(11) NOT NULL DEFAULT 0,
  `PVIPVoucher` int(11) NOT NULL DEFAULT 0,
  `PVIPAmount` int(11) NOT NULL DEFAULT 0,
  `GarageVW` int(11) NOT NULL DEFAULT 0,
  `PumpkinStock` int(11) NOT NULL DEFAULT 0,
  `HalloweenShop` int(11) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of misc
-- ----------------------------

-- ----------------------------
-- Table structure for motd
-- ----------------------------
DROP TABLE IF EXISTS `motd`;
CREATE TABLE `motd`  (
  `gMOTD` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `aMOTD` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `vMOTD` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cMOTD` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of motd
-- ----------------------------

-- ----------------------------
-- Table structure for mt_cms_napthe_log
-- ----------------------------
DROP TABLE IF EXISTS `mt_cms_napthe_log`;
CREATE TABLE `mt_cms_napthe_log`  (
  `StatusCard` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `PinCard` int(11) NOT NULL,
  `SeriCard` int(11) NOT NULL,
  `NameCard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mt_cms_napthe_log
-- ----------------------------

-- ----------------------------
-- Table structure for mt_cms_system
-- ----------------------------
DROP TABLE IF EXISTS `mt_cms_system`;
CREATE TABLE `mt_cms_system`  (
  `title` int(11) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url_forum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `logo_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `logo_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `copyright` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mt_cms_system
-- ----------------------------

-- ----------------------------
-- Table structure for nation_queue
-- ----------------------------
DROP TABLE IF EXISTS `nation_queue`;
CREATE TABLE `nation_queue`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` int(11) NOT NULL,
  `name` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` datetime NOT NULL,
  `nation` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of nation_queue
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for paynsprays
-- ----------------------------
DROP TABLE IF EXISTS `paynsprays`;
CREATE TABLE `paynsprays`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Status` int(11) NOT NULL DEFAULT 0,
  `PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `GroupCost` int(11) NOT NULL DEFAULT 0,
  `RegCost` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of paynsprays
-- ----------------------------

-- ----------------------------
-- Table structure for plants
-- ----------------------------
DROP TABLE IF EXISTS `plants`;
CREATE TABLE `plants`  (
  `plantID` int(11) NOT NULL AUTO_INCREMENT,
  `Owner` int(11) NOT NULL DEFAULT 0,
  `Object` int(11) NOT NULL DEFAULT 0,
  `PlantType` int(11) NOT NULL DEFAULT 0,
  `PositionX` float NOT NULL DEFAULT 0,
  `PositionY` float NOT NULL DEFAULT 0,
  `PositionZ` float NOT NULL DEFAULT 0,
  `Virtual` int(11) NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `Growth` int(11) NOT NULL DEFAULT 0,
  `Expires` int(11) NOT NULL DEFAULT 0,
  `DrugsSkill` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`plantID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 301 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of plants
-- ----------------------------

-- ----------------------------
-- Table structure for playerbusinesscars
-- ----------------------------
DROP TABLE IF EXISTS `playerbusinesscars`;
CREATE TABLE `playerbusinesscars`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Model` int(11) NOT NULL DEFAULT 0,
  `Business` int(11) NOT NULL DEFAULT 0,
  `Type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Color` int(11) NOT NULL DEFAULT 0,
  `Color2` int(11) NOT NULL DEFAULT 0,
  `PositionX` float NOT NULL DEFAULT 0,
  `PositionY` float NOT NULL DEFAULT 0,
  `PositionZ` float NOT NULL DEFAULT 0,
  `PositionA` float NOT NULL DEFAULT 0,
  `Text` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Mod0` int(11) NOT NULL DEFAULT 0,
  `Mod1` int(11) NOT NULL DEFAULT 0,
  `Mod2` int(11) NOT NULL DEFAULT 0,
  `Mod3` int(11) NOT NULL DEFAULT 0,
  `Mod4` int(11) NOT NULL DEFAULT 0,
  `Mod5` int(11) NOT NULL DEFAULT 0,
  `Mod6` int(11) NOT NULL DEFAULT 0,
  `Mod7` int(11) NOT NULL DEFAULT 0,
  `Mod8` int(11) NOT NULL DEFAULT 0,
  `Mod9` int(11) NOT NULL DEFAULT 0,
  `Mod10` int(11) NOT NULL DEFAULT 0,
  `Mod11` int(11) NOT NULL DEFAULT 0,
  `Mod12` int(11) NOT NULL DEFAULT 0,
  `Mod13` int(11) NOT NULL DEFAULT 0,
  `Mod14` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of playerbusinesscars
-- ----------------------------

-- ----------------------------
-- Table structure for playerbusinesses
-- ----------------------------
DROP TABLE IF EXISTS `playerbusinesses`;
CREATE TABLE `playerbusinesses`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Owner` int(11) NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 0,
  `Nation` int(11) NOT NULL DEFAULT 0,
  `EntranceX` float NOT NULL DEFAULT 0,
  `EntranceY` float NOT NULL DEFAULT 0,
  `EntranceZ` float NOT NULL DEFAULT 0,
  `EntranceA` float NOT NULL DEFAULT 0,
  `ExitX` float NOT NULL DEFAULT 0,
  `ExitY` float NOT NULL DEFAULT 0,
  `ExitZ` float NOT NULL DEFAULT 0,
  `ExitA` float NOT NULL DEFAULT 0,
  `InteriorExt` int(11) NOT NULL DEFAULT 0,
  `InteriorInt` int(11) NOT NULL DEFAULT 0,
  `WorldExt` int(11) NOT NULL DEFAULT 0,
  `WorldInt` int(11) NOT NULL DEFAULT 0,
  `Price0` int(11) NOT NULL DEFAULT 0,
  `Price1` int(11) NOT NULL DEFAULT 0,
  `Price2` int(11) NOT NULL DEFAULT 0,
  `Price3` int(11) NOT NULL DEFAULT 0,
  `Price4` int(11) NOT NULL DEFAULT 0,
  `Price5` int(11) NOT NULL DEFAULT 0,
  `Price6` int(11) NOT NULL DEFAULT 0,
  `Price7` int(11) NOT NULL DEFAULT 0,
  `Price8` int(11) NOT NULL DEFAULT 0,
  `Price9` int(11) NOT NULL DEFAULT 0,
  `Price10` int(11) NOT NULL DEFAULT 0,
  `Price11` int(11) NOT NULL DEFAULT 0,
  `Price12` int(11) NOT NULL DEFAULT 0,
  `Price13` int(11) NOT NULL DEFAULT 0,
  `Price14` int(11) NOT NULL DEFAULT 0,
  `Price15` int(11) NOT NULL DEFAULT 0,
  `Price16` int(11) NOT NULL DEFAULT 0,
  `Price17` int(11) NOT NULL DEFAULT 0,
  `Price18` int(11) NOT NULL DEFAULT 0,
  `Price19` int(11) NOT NULL DEFAULT 0,
  `Price20` int(11) NOT NULL DEFAULT 0,
  `CustomExt` int(11) NOT NULL DEFAULT 0,
  `CustomInt` int(11) NOT NULL DEFAULT 0,
  `Rank0` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Rank1` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Rank2` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Rank3` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Rank4` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Rank5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Rank6` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Rank7` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Rank8` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Rank9` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Level` int(11) NOT NULL DEFAULT 1,
  `Inventory` int(11) NOT NULL DEFAULT 0,
  `Bank` int(11) NOT NULL DEFAULT 0,
  `Sold` int(11) NOT NULL DEFAULT 0,
  `Pay` int(11) NOT NULL DEFAULT 0,
  `OrderState` int(11) NOT NULL DEFAULT 0,
  `OrderAmount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of playerbusinesses
-- ----------------------------

-- ----------------------------
-- Table structure for points
-- ----------------------------
DROP TABLE IF EXISTS `points`;
CREATE TABLE `points`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posx` float(20, 5) NOT NULL DEFAULT 0.00000,
  `posy` float(20, 5) NOT NULL DEFAULT 0.00000,
  `posz` float(20, 5) NOT NULL DEFAULT 0.00000,
  `vw` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `vulnerable` int(11) NOT NULL DEFAULT 0,
  `matpoint` int(11) NOT NULL DEFAULT 0,
  `owner` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cappername` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `captime` int(11) NOT NULL DEFAULT 0,
  `capfam` int(11) NOT NULL DEFAULT 255,
  `capname` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of points
-- ----------------------------

-- ----------------------------
-- Table structure for pvehpositions
-- ----------------------------
DROP TABLE IF EXISTS `pvehpositions`;
CREATE TABLE `pvehpositions`  (
  `id` int(11) NOT NULL DEFAULT -1,
  `pv0ModelId` int(11) NOT NULL DEFAULT 0,
  `pv0PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv0PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv0PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv0PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv1ModelId` int(11) NOT NULL DEFAULT 0,
  `pv1PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv1PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv1PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv1PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv2ModelId` int(11) NOT NULL DEFAULT 0,
  `pv2PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv2PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv2PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv2PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv3ModelId` int(11) NOT NULL DEFAULT 0,
  `pv3PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv3PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv3PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv3PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv4ModelId` int(11) NOT NULL DEFAULT 0,
  `pv4PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv4PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv4PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv4PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv5ModelId` int(11) NOT NULL DEFAULT 0,
  `pv5PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv5PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv5PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv5PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv6ModelId` int(11) NOT NULL DEFAULT 0,
  `pv6PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv6PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv6PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv6PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv7ModelId` int(11) NOT NULL DEFAULT 0,
  `pv7PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv7PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv7PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv7PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv8ModelId` int(11) NOT NULL DEFAULT 0,
  `pv8PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv8PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv8PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv8PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv9ModelId` int(11) NOT NULL DEFAULT 0,
  `pv9PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv9PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv9PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv9PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of pvehpositions
-- ----------------------------

-- ----------------------------
-- Table structure for rentedcars
-- ----------------------------
DROP TABLE IF EXISTS `rentedcars`;
CREATE TABLE `rentedcars`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sqlid` int(11) NULL DEFAULT 0,
  `modelid` int(11) NULL DEFAULT 0,
  `posx` float NULL DEFAULT 0,
  `posy` float NULL DEFAULT 0,
  `posz` float NULL DEFAULT 0,
  `posa` float NULL DEFAULT 0,
  `spawned` int(11) NULL DEFAULT 0,
  `hours` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of rentedcars
-- ----------------------------

-- ----------------------------
-- Table structure for resupplypoints
-- ----------------------------
DROP TABLE IF EXISTS `resupplypoints`;
CREATE TABLE `resupplypoints`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Business` int(11) NOT NULL DEFAULT 0,
  `VW` int(11) NOT NULL DEFAULT 0,
  `EntranceX` float NOT NULL DEFAULT 0,
  `EntranceY` float NOT NULL DEFAULT 0,
  `EntranceZ` float NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of resupplypoints
-- ----------------------------

-- ----------------------------
-- Table structure for rewardcalc
-- ----------------------------
DROP TABLE IF EXISTS `rewardcalc`;
CREATE TABLE `rewardcalc`  (
  `pID` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of rewardcalc
-- ----------------------------

-- ----------------------------
-- Table structure for rflteams
-- ----------------------------
DROP TABLE IF EXISTS `rflteams`;
CREATE TABLE `rflteams`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Not Used',
  `used` int(11) NOT NULL DEFAULT 0,
  `laps` int(11) NOT NULL DEFAULT 0,
  `leader` varchar(26) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'None',
  `members` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of rflteams
-- ----------------------------

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Month` datetime NOT NULL,
  `TotalSold0` int(11) NOT NULL DEFAULT 0,
  `AmountMade0` int(11) NOT NULL DEFAULT 0,
  `TotalSold1` int(11) NOT NULL DEFAULT 0,
  `AmountMade1` int(11) NOT NULL DEFAULT 0,
  `TotalSold2` int(11) NOT NULL DEFAULT 0,
  `AmountMade2` int(11) NOT NULL DEFAULT 0,
  `TotalSold3` int(11) NOT NULL DEFAULT 0,
  `AmountMade3` int(11) NOT NULL DEFAULT 0,
  `TotalSold4` int(11) NOT NULL DEFAULT 0,
  `AmountMade4` int(11) NOT NULL DEFAULT 0,
  `TotalSold5` int(11) NOT NULL DEFAULT 0,
  `AmountMade5` int(11) NOT NULL DEFAULT 0,
  `TotalSold6` int(11) NOT NULL DEFAULT 0,
  `AmountMade6` int(11) NOT NULL DEFAULT 0,
  `TotalSold7` int(11) NOT NULL DEFAULT 0,
  `AmountMade7` int(11) NOT NULL DEFAULT 0,
  `TotalSold8` int(11) NOT NULL DEFAULT 0,
  `AmountMade8` int(11) NOT NULL DEFAULT 0,
  `TotalSold9` int(11) NOT NULL DEFAULT 0,
  `AmountMade9` int(11) NOT NULL DEFAULT 0,
  `TotalSold10` int(11) NOT NULL DEFAULT 0,
  `AmountMade10` int(11) NOT NULL DEFAULT 0,
  `TotalSold11` int(11) NOT NULL DEFAULT 0,
  `AmountMade11` int(11) NOT NULL DEFAULT 0,
  `TotalSold12` int(11) NOT NULL DEFAULT 0,
  `AmountMade12` int(11) NOT NULL DEFAULT 0,
  `TotalSold13` int(11) NOT NULL DEFAULT 0,
  `AmountMade13` int(11) NOT NULL DEFAULT 0,
  `TotalSold14` int(11) NOT NULL DEFAULT 0,
  `AmountMade14` int(11) NOT NULL DEFAULT 0,
  `TotalSold15` int(11) NOT NULL DEFAULT 0,
  `AmountMade15` int(11) NOT NULL DEFAULT 0,
  `TotalSold16` int(11) NOT NULL DEFAULT 0,
  `AmountMade16` int(11) NOT NULL DEFAULT 0,
  `TotalSold17` int(11) NOT NULL DEFAULT 0,
  `AmountMade17` int(11) NOT NULL DEFAULT 0,
  `TotalSold18` int(11) NOT NULL DEFAULT 0,
  `AmountMade18` int(11) NOT NULL DEFAULT 0,
  `TotalSold19` int(11) NOT NULL DEFAULT 0,
  `AmountMade19` int(11) NOT NULL DEFAULT 0,
  `TotalSold20` int(11) NOT NULL DEFAULT 0,
  `AmountMade20` int(11) NOT NULL DEFAULT 0,
  `TotalSold21` int(11) NOT NULL DEFAULT 0,
  `AmountMade21` int(11) NOT NULL DEFAULT 0,
  `TotalSold22` int(11) NOT NULL DEFAULT 0,
  `AmountMade22` int(11) NOT NULL DEFAULT 0,
  `TotalSold23` int(11) NOT NULL DEFAULT 0,
  `AmountMade23` int(11) NOT NULL DEFAULT 0,
  `TotalSold24` int(11) NOT NULL DEFAULT 0,
  `AmountMade24` int(11) NOT NULL DEFAULT 0,
  `TotalSold25` int(11) NOT NULL DEFAULT 0,
  `AmountMade25` int(11) NOT NULL DEFAULT 0,
  `TotalSold26` int(11) NOT NULL DEFAULT 0,
  `AmountMade26` int(11) NOT NULL DEFAULT 0,
  `TotalSold27` int(11) NOT NULL DEFAULT 0,
  `AmountMade27` int(11) NOT NULL DEFAULT 0,
  `TotalSold28` int(11) NOT NULL DEFAULT 0,
  `AmountMade28` int(11) NOT NULL DEFAULT 0,
  `TotalSold29` int(11) NOT NULL DEFAULT 0,
  `AmountMade29` int(11) NOT NULL DEFAULT 0,
  `TotalSold30` int(11) NOT NULL DEFAULT 0,
  `AmountMade30` int(11) NOT NULL DEFAULT 0,
  `TotalSold31` int(11) NOT NULL DEFAULT 0,
  `AmountMade31` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sales
-- ----------------------------

-- ----------------------------
-- Table structure for sec_questions
-- ----------------------------
DROP TABLE IF EXISTS `sec_questions`;
CREATE TABLE `sec_questions`  (
  `userid` int(11) NOT NULL,
  `question` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `answer` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sec_questions
-- ----------------------------

-- ----------------------------
-- Table structure for serverbusinesses
-- ----------------------------
DROP TABLE IF EXISTS `serverbusinesses`;
CREATE TABLE `serverbusinesses`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` int(11) NOT NULL DEFAULT 0,
  `Nation` int(11) NOT NULL DEFAULT 0,
  `EntranceX` float NOT NULL DEFAULT 0,
  `EntranceY` float NOT NULL DEFAULT 0,
  `EntranceZ` float NOT NULL DEFAULT 0,
  `EntranceA` float NOT NULL DEFAULT 0,
  `ExitX` float NOT NULL DEFAULT 0,
  `ExitY` float NOT NULL DEFAULT 0,
  `ExitZ` float NOT NULL DEFAULT 0,
  `ExitA` float NOT NULL DEFAULT 0,
  `InteriorExt` int(11) NOT NULL DEFAULT 0,
  `InteriorInt` int(11) NOT NULL DEFAULT 0,
  `WorldExt` int(11) NOT NULL DEFAULT 0,
  `WorldInt` int(11) NOT NULL DEFAULT 0,
  `Price1` int(11) NOT NULL DEFAULT 0,
  `Price2` int(11) NOT NULL DEFAULT 0,
  `Price3` int(11) NOT NULL DEFAULT 0,
  `Price4` int(11) NOT NULL DEFAULT 0,
  `Price5` int(11) NOT NULL DEFAULT 0,
  `Price6` int(11) NOT NULL DEFAULT 0,
  `Price7` int(11) NOT NULL DEFAULT 0,
  `Price8` int(11) NOT NULL DEFAULT 0,
  `Price9` int(11) NOT NULL DEFAULT 0,
  `Price10` int(11) NOT NULL DEFAULT 0,
  `Price11` int(11) NOT NULL DEFAULT 0,
  `Price12` int(11) NOT NULL DEFAULT 0,
  `Price13` int(11) NOT NULL DEFAULT 0,
  `Price14` int(11) NOT NULL DEFAULT 0,
  `Price15` int(11) NOT NULL DEFAULT 0,
  `Price16` int(11) NOT NULL DEFAULT 0,
  `Price17` int(11) NOT NULL DEFAULT 0,
  `Price18` int(11) NOT NULL DEFAULT 0,
  `Price19` int(11) NOT NULL DEFAULT 0,
  `Price20` int(11) NOT NULL DEFAULT 0,
  `CustomExt` int(11) NOT NULL DEFAULT 0,
  `CustomInt` int(11) NOT NULL DEFAULT 0,
  `Price0` int(11) NOT NULL DEFAULT 0,
  `BuyX` float(11, 0) NOT NULL DEFAULT 0,
  `BuyY` float(11, 0) NOT NULL DEFAULT 0,
  `BuyZ` float(11, 0) NOT NULL DEFAULT 0,
  `BuyA` float(11, 0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of serverbusinesses
-- ----------------------------

-- ----------------------------
-- Table structure for serverbusinessescar
-- ----------------------------
DROP TABLE IF EXISTS `serverbusinessescar`;
CREATE TABLE `serverbusinessescar`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Model` int(11) NOT NULL DEFAULT 0,
  `Business` int(11) NOT NULL DEFAULT 0,
  `Type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Price` int(11) NOT NULL DEFAULT 0,
  `PositionX` float NOT NULL DEFAULT 0,
  `PositionY` float NOT NULL DEFAULT 0,
  `PositionZ` float NOT NULL DEFAULT 0,
  `PositionA` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of serverbusinessescar
-- ----------------------------

-- ----------------------------
-- Table structure for serverbusinessesgaspump
-- ----------------------------
DROP TABLE IF EXISTS `serverbusinessesgaspump`;
CREATE TABLE `serverbusinessesgaspump`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Business` int(10) UNSIGNED NULL DEFAULT 0,
  `Object` int(10) UNSIGNED NULL DEFAULT 0,
  `PositionX` float NULL DEFAULT 0,
  `PositionY` float NULL DEFAULT 0,
  `PositionZ` float NULL DEFAULT 0,
  `PositionA` float NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of serverbusinessesgaspump
-- ----------------------------

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop`  (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `price` decimal(15, 4) NOT NULL DEFAULT 0.0000,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `delivered` tinyint(1) NOT NULL DEFAULT 0,
  `updatedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deliveruser` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`order_product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of shop
-- ----------------------------

-- ----------------------------
-- Table structure for shop_orders
-- ----------------------------
DROP TABLE IF EXISTS `shop_orders`;
CREATE TABLE `shop_orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `GiftVoucher` int(11) NULL DEFAULT NULL,
  `CarVoucher` int(11) NULL DEFAULT NULL,
  `VehVoucher` int(11) NULL DEFAULT NULL,
  `SVIPVoucher` int(11) NULL DEFAULT NULL,
  `GVIPVoucher` int(11) NULL DEFAULT NULL,
  `credits_spent` int(11) NULL DEFAULT NULL,
  `PVIPVoucher` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `date_added` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of shop_orders
-- ----------------------------

-- ----------------------------
-- Table structure for shopprices
-- ----------------------------
DROP TABLE IF EXISTS `shopprices`;
CREATE TABLE `shopprices`  (
  `Price0` int(11) NOT NULL DEFAULT 0,
  `Price1` int(11) NOT NULL DEFAULT 0,
  `Price2` int(11) NOT NULL DEFAULT 0,
  `Price3` int(11) NOT NULL DEFAULT 0,
  `Price4` int(11) NOT NULL DEFAULT 0,
  `Price5` int(11) NOT NULL DEFAULT 0,
  `Price6` int(11) NOT NULL DEFAULT 0,
  `Price7` int(11) NOT NULL DEFAULT 0,
  `Price8` int(11) NOT NULL DEFAULT 0,
  `Price9` int(11) NOT NULL DEFAULT 0,
  `Price10` int(11) NOT NULL DEFAULT 0,
  `Price11` int(11) NOT NULL DEFAULT 0,
  `Price12` int(11) NOT NULL DEFAULT 0,
  `Price13` int(11) NOT NULL DEFAULT 0,
  `Price14` int(11) NOT NULL DEFAULT 0,
  `Price15` int(11) NOT NULL DEFAULT 0,
  `Price16` int(11) NOT NULL DEFAULT 0,
  `Price17` int(11) NOT NULL DEFAULT 0,
  `Price18` int(11) NOT NULL DEFAULT 0,
  `Price19` int(11) NOT NULL,
  `Price20` int(11) NOT NULL DEFAULT 0,
  `Price21` int(11) NOT NULL DEFAULT 0,
  `Price22` int(11) NOT NULL DEFAULT 0,
  `Price23` int(11) NOT NULL DEFAULT 0,
  `Price24` int(11) NOT NULL DEFAULT 0,
  `Price25` int(11) NOT NULL DEFAULT 0,
  `Price26` int(11) NOT NULL DEFAULT 0,
  `Price27` int(11) NOT NULL DEFAULT 0,
  `Price28` int(11) NOT NULL DEFAULT 0,
  `Price29` int(11) NOT NULL DEFAULT 0,
  `Price30` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Price0`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of shopprices
-- ----------------------------

-- ----------------------------
-- Table structure for shoptech
-- ----------------------------
DROP TABLE IF EXISTS `shoptech`;
CREATE TABLE `shoptech`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `total` int(11) NOT NULL DEFAULT 0,
  `dtotal` float(11, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of shoptech
-- ----------------------------

-- ----------------------------
-- Table structure for sms
-- ----------------------------
DROP TABLE IF EXISTS `sms`;
CREATE TABLE `sms`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `senderid` int(11) NOT NULL DEFAULT -1,
  `sendernumber` int(11) NOT NULL DEFAULT 0,
  `receiver` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiverid` int(11) NOT NULL DEFAULT -1,
  `receivernumber` int(11) NOT NULL DEFAULT 0,
  `message` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sms
-- ----------------------------

-- ----------------------------
-- Table structure for sobeitkicks
-- ----------------------------
DROP TABLE IF EXISTS `sobeitkicks`;
CREATE TABLE `sobeitkicks`  (
  `sqlID` int(11) NOT NULL DEFAULT 0,
  `Kicks` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`sqlID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sobeitkicks
-- ----------------------------

-- ----------------------------
-- Table structure for speed_cameras
-- ----------------------------
DROP TABLE IF EXISTS `speed_cameras`;
CREATE TABLE `speed_cameras`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_x` float(10, 5) NOT NULL,
  `pos_y` float(10, 5) NOT NULL,
  `pos_z` float(10, 5) NOT NULL,
  `rotation` float(10, 5) NOT NULL,
  `range` float(10, 5) NOT NULL,
  `speed_limit` float(10, 5) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Contains data regarding speed cameras.' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of speed_cameras
-- ----------------------------

-- ----------------------------
-- Table structure for text_labels
-- ----------------------------
DROP TABLE IF EXISTS `text_labels`;
CREATE TABLE `text_labels`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Text` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `Color` int(11) NOT NULL DEFAULT 0,
  `PickupModel` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 500 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of text_labels
-- ----------------------------

-- ----------------------------
-- Table structure for tokens_call
-- ----------------------------
DROP TABLE IF EXISTS `tokens_call`;
CREATE TABLE `tokens_call`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` int(11) NOT NULL,
  `date` date NULL DEFAULT NULL,
  `hour` int(11) NULL DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tokens_call
-- ----------------------------

-- ----------------------------
-- Table structure for tokens_report
-- ----------------------------
DROP TABLE IF EXISTS `tokens_report`;
CREATE TABLE `tokens_report`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` int(11) NOT NULL,
  `date` date NULL DEFAULT NULL,
  `hour` time NULL DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2715 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tokens_report
-- ----------------------------

-- ----------------------------
-- Table structure for tokens_request
-- ----------------------------
DROP TABLE IF EXISTS `tokens_request`;
CREATE TABLE `tokens_request`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` int(11) NOT NULL,
  `date` date NULL DEFAULT NULL,
  `hour` time NULL DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1900 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tokens_request
-- ----------------------------

-- ----------------------------
-- Table structure for toys
-- ----------------------------
DROP TABLE IF EXISTS `toys`;
CREATE TABLE `toys`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player` int(11) NOT NULL,
  `modelid` int(11) NOT NULL,
  `bone` int(11) NOT NULL,
  `posx` float NOT NULL,
  `posy` float NOT NULL,
  `posz` float NOT NULL,
  `rotx` float NOT NULL,
  `roty` float NOT NULL,
  `rotz` float NOT NULL,
  `scalex` float NOT NULL,
  `scaley` float NOT NULL,
  `scalez` float NOT NULL,
  `tradable` int(11) NOT NULL DEFAULT 0,
  `special` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2062 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of toys
-- ----------------------------

-- ----------------------------
-- Table structure for track_backdoor
-- ----------------------------
DROP TABLE IF EXISTS `track_backdoor`;
CREATE TABLE `track_backdoor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `order_id` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `house_id` int(11) NOT NULL,
  `door_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of track_backdoor
-- ----------------------------

-- ----------------------------
-- Table structure for track_gate
-- ----------------------------
DROP TABLE IF EXISTS `track_gate`;
CREATE TABLE `track_gate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `order_id` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `house_id` int(11) NOT NULL,
  `gate_id` int(11) NOT NULL,
  `gate_move` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of track_gate
-- ----------------------------

-- ----------------------------
-- Table structure for track_gvip
-- ----------------------------
DROP TABLE IF EXISTS `track_gvip`;
CREATE TABLE `track_gvip`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `order_id` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `vipm` int(11) NOT NULL,
  `renewal` int(11) NOT NULL,
  `gift` int(11) NOT NULL,
  `expiration` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 339 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of track_gvip
-- ----------------------------

-- ----------------------------
-- Table structure for track_house
-- ----------------------------
DROP TABLE IF EXISTS `track_house`;
CREATE TABLE `track_house`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `order_id` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `house_move` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of track_house
-- ----------------------------

-- ----------------------------
-- Table structure for track_pvip
-- ----------------------------
DROP TABLE IF EXISTS `track_pvip`;
CREATE TABLE `track_pvip`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `vipm` int(11) NOT NULL,
  `shop_email` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `restrict_veh` int(11) NOT NULL,
  `donate` int(11) NOT NULL DEFAULT 0,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of track_pvip
-- ----------------------------

-- ----------------------------
-- Table structure for track_ts
-- ----------------------------
DROP TABLE IF EXISTS `track_ts`;
CREATE TABLE `track_ts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `order_id` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `database_id` int(11) NOT NULL,
  `channel_name` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of track_ts
-- ----------------------------

-- ----------------------------
-- Table structure for track_vip
-- ----------------------------
DROP TABLE IF EXISTS `track_vip`;
CREATE TABLE `track_vip`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `vip` int(11) NOT NULL,
  `order_id` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `vipm` int(11) NOT NULL,
  `expiration` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of track_vip
-- ----------------------------

-- ----------------------------
-- Table structure for user_leaves
-- ----------------------------
DROP TABLE IF EXISTS `user_leaves`;
CREATE TABLE `user_leaves`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date_leave` date NOT NULL,
  `date_return` date NOT NULL,
  `reason` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` int(11) NOT NULL,
  `accept_uid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 151 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_leaves
-- ----------------------------

-- ----------------------------
-- Table structure for user_notes
-- ----------------------------
DROP TABLE IF EXISTS `user_notes`;
CREATE TABLE `user_notes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `note` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `addDate` date NOT NULL,
  `invokeid` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 417 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_notes
-- ----------------------------

-- ----------------------------
-- Table structure for vehicles
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sqlID` int(11) NOT NULL DEFAULT 0,
  `pvModelId` int(11) NOT NULL DEFAULT 0,
  `pvPosX` float NOT NULL DEFAULT 0,
  `pvPosY` float NOT NULL DEFAULT 0,
  `pvPosZ` float NOT NULL DEFAULT 0,
  `pvPosAngle` float NOT NULL DEFAULT 0,
  `pvLock` int(11) NOT NULL DEFAULT 0,
  `pvLocked` int(11) NOT NULL DEFAULT 0,
  `pvPaintJob` int(11) NOT NULL DEFAULT 0,
  `pvColor1` int(11) NOT NULL DEFAULT 0,
  `pvColor2` int(11) NOT NULL DEFAULT 0,
  `pvPrice` int(11) NOT NULL DEFAULT 0,
  `pvTicket` int(11) NOT NULL DEFAULT 0,
  `pvRestricted` int(11) NOT NULL DEFAULT 0,
  `pvWepUpgrade` int(11) NOT NULL DEFAULT 0,
  `pvFuel` float NOT NULL DEFAULT 0,
  `pvImpound` int(11) NOT NULL DEFAULT 0,
  `pvDisabled` int(11) NOT NULL DEFAULT 0,
  `pvPlate` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `pvMod0` int(11) NOT NULL DEFAULT 0,
  `pvMod1` int(11) NOT NULL DEFAULT 0,
  `pvMod2` int(11) NOT NULL DEFAULT 0,
  `pvMod3` int(11) NOT NULL DEFAULT 0,
  `pvMod4` int(11) NOT NULL DEFAULT 0,
  `pvMod5` int(11) NOT NULL DEFAULT 0,
  `pvMod6` int(11) NOT NULL DEFAULT 0,
  `pvMod7` int(11) NOT NULL DEFAULT 0,
  `pvMod8` int(11) NOT NULL DEFAULT 0,
  `pvMod9` int(11) NOT NULL DEFAULT 0,
  `pvMod10` int(11) NOT NULL DEFAULT 0,
  `pvMod11` int(11) NOT NULL DEFAULT 0,
  `pvMod12` int(11) NOT NULL DEFAULT 0,
  `pvMod13` int(11) NOT NULL DEFAULT 0,
  `pvMod14` int(11) NOT NULL DEFAULT 0,
  `pvVW` int(11) NOT NULL DEFAULT 0,
  `pvInt` int(11) NOT NULL DEFAULT 0,
  `pvDamaged` int(11) NOT NULL DEFAULT 0,
  `pvCrashFlag` int(11) NOT NULL DEFAULT 0,
  `pvCrashX` float NOT NULL DEFAULT 0,
  `pvCrashY` float NOT NULL DEFAULT 0,
  `pvCrashZ` float NOT NULL DEFAULT 0,
  `pvCrashAngle` float NOT NULL DEFAULT 0,
  `pvCrashVW` int(11) NOT NULL DEFAULT 0,
  `pvWeapon0` int(11) NOT NULL DEFAULT 0,
  `pvWeapon1` int(11) NOT NULL DEFAULT 0,
  `pvWeapon2` int(11) NOT NULL DEFAULT 0,
  `pvWeapon3` int(11) NOT NULL DEFAULT 0,
  `pvWeapon4` int(11) NOT NULL DEFAULT 0,
  `pvWeapon5` int(11) NOT NULL DEFAULT 0,
  `pvWeapon6` int(11) NOT NULL DEFAULT 0,
  `pvWeapon7` int(11) NOT NULL DEFAULT 0,
  `pvWeapon8` int(11) NOT NULL DEFAULT 0,
  `pvWeapon9` int(11) NOT NULL DEFAULT 0,
  `pvAmmo0` int(11) NOT NULL DEFAULT 0,
  `pvAmmo1` int(11) NOT NULL DEFAULT 0,
  `pvAmmo2` int(11) NOT NULL DEFAULT 0,
  `pvAmmo3` int(11) NOT NULL DEFAULT 0,
  `pvAmmo4` int(11) NOT NULL DEFAULT 0,
  `pvAmmo5` int(11) NOT NULL DEFAULT 0,
  `pvAmmo6` int(11) NOT NULL DEFAULT 0,
  `pvAmmo7` int(11) NOT NULL DEFAULT 0,
  `pvAmmo8` int(11) NOT NULL DEFAULT 0,
  `pvAmmo9` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3985 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of vehicles
-- ----------------------------

-- ----------------------------
-- Table structure for vehicles2
-- ----------------------------
DROP TABLE IF EXISTS `vehicles2`;
CREATE TABLE `vehicles2`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sqlID` int(11) NOT NULL DEFAULT 0,
  `pvModelId` int(11) NOT NULL DEFAULT 0,
  `pvPosX` float NOT NULL DEFAULT 0,
  `pvPosY` float NOT NULL DEFAULT 0,
  `pvPosZ` float NOT NULL DEFAULT 0,
  `pvPosAngle` float NOT NULL DEFAULT 0,
  `pvLock` int(11) NOT NULL DEFAULT 0,
  `pvLocked` int(11) NOT NULL DEFAULT 0,
  `pvPaintJob` int(11) NOT NULL DEFAULT 0,
  `pvColor1` int(11) NOT NULL DEFAULT 0,
  `pvColor2` int(11) NOT NULL DEFAULT 0,
  `pvPrice` int(11) NOT NULL DEFAULT 0,
  `pvTicket` int(11) NOT NULL DEFAULT 0,
  `pvRestricted` int(11) NOT NULL DEFAULT 0,
  `pvWeapon0` int(11) NOT NULL DEFAULT 0,
  `pvWeapon1` int(11) NOT NULL DEFAULT 0,
  `pvWeapon2` int(11) NOT NULL DEFAULT 0,
  `pvWepUpgrade` int(11) NOT NULL DEFAULT 0,
  `pvFuel` float NOT NULL DEFAULT 0,
  `pvImpound` int(11) NOT NULL DEFAULT 0,
  `pvDisabled` int(11) NOT NULL DEFAULT 0,
  `pvPlate` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `pvMod0` int(11) NOT NULL DEFAULT 0,
  `pvMod1` int(11) NOT NULL DEFAULT 0,
  `pvMod2` int(11) NOT NULL DEFAULT 0,
  `pvMod3` int(11) NOT NULL DEFAULT 0,
  `pvMod4` int(11) NOT NULL DEFAULT 0,
  `pvMod5` int(11) NOT NULL DEFAULT 0,
  `pvMod6` int(11) NOT NULL DEFAULT 0,
  `pvMod7` int(11) NOT NULL DEFAULT 0,
  `pvMod8` int(11) NOT NULL DEFAULT 0,
  `pvMod9` int(11) NOT NULL DEFAULT 0,
  `pvMod10` int(11) NOT NULL DEFAULT 0,
  `pvMod11` int(11) NOT NULL DEFAULT 0,
  `pvMod12` int(11) NOT NULL DEFAULT 0,
  `pvMod13` int(11) NOT NULL DEFAULT 0,
  `pvMod14` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of vehicles2
-- ----------------------------

-- ----------------------------
-- Table structure for zombie
-- ----------------------------
DROP TABLE IF EXISTS `zombie`;
CREATE TABLE `zombie`  (
  `id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of zombie
-- ----------------------------

-- ----------------------------
-- Table structure for zombieheals
-- ----------------------------
DROP TABLE IF EXISTS `zombieheals`;
CREATE TABLE `zombieheals`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of zombieheals
-- ----------------------------

-- ----------------------------
-- Table structure for zombiekills
-- ----------------------------
DROP TABLE IF EXISTS `zombiekills`;
CREATE TABLE `zombiekills`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of zombiekills
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
