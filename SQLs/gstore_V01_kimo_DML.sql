-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
-- 
-- Host: localhost
-- Generation Time: Nov 14, 2017 at 04:55 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


USE gstore;

--
-- Dumping data for table `PRODUCT`
--

INSERT INTO `PRODUCT` (`Product_id`, `Product_name`, `Units`, `Picture`, `Weight`, `Category_id`, `Price`, `Product_description`, `Manufacturer_id`) VALUES
(1, 'Dettol Original Soap', 80, 'Dettol_original.jpg', 75, 2, 26, 'The original Dettol Soap', 8),
(2, 'Skincare', 75, 'Dettol_skincare.jpg', 75, 2, 25, 'The same effectiveness of the Original Dettol Soap in a different package', 8),
(3, 'Beauty Bar', 73, 'Dove_Beauty_Bar_Soap.jpg', 100, 2, 60, 'Feel the feather touch when you bath with dove beauty soap', 12),
(4, 'Daily Shine', 92, 'Dove_Daily_Shine_Shampoo.jpg', 100, 2, 110, 'Your hair : smoother.', 12),
(5, 'Dant Kanti', 200, 'Dant_Kanti_Advance_Dental_toothpaste.jpg', 75, 7, 60, 'Herbal Toothpaste', 1),
(6, 'Alovera shampoo', 205, 'Patanjali_Aloe_Vera_Hair_shampoo.jpg', 110, 2, 95, 'Aloevera shampoo', 1),
(7, 'Alovera kranti soap', 210, 'Patanjali_Aloe_Vera_Kranti_Soap.jpg', 60, 2, 30, 'Alovera kranti daily wathing soap', 1),
(8, 'Amla chamanprash', 180, 'Patanjali_Amla_Candy_Chamanprash.jpg', 250, 3, 550, 'Amla candy taste chamanprash', 1),
(9, 'chatpata chamanprash', 170, 'Patanjali_Amla_Chatpata_Candy_Chamanprash.jpg', 250, 3, 599, 'Amla candy chatpata spicy taste chamanprash', 1),
(10, 'badam chamanprash', 244, 'Patanjali_Badam_Pak_Chamanprash.jpeg', 500, 3, 575, 'patanjali ayurvedic badam chamaprsh', 1),
(11, 'gulkand chamanprash', 268, 'patanjali_gulkand_chamanprash.jpg', 500, 3, 585, 'patanjali ayurvedic gulkand flavour chamanprash', 1),
(12, 'hing chamanprash', 285, 'patanjali_hing_chamanprash.jpg', 500, 3, 581, 'patanjali pure ayurvedic hing chamanprash', 1),
(13, 'pachak hingpeda chamanprash', 782, 'patanjali_pachak_hingpeda_chamanprash.jpg', 500, 3, 589, 'patanjali pure ayurvedic pachak chamanprash with hing ingredients', 1),
(14, '50-50 maska chaska', 1111, 'britannia_50_50_maska_chaska_biscuit.jpg', 50, 1, 10, 'britannia 50 50 maska chaska biscuit', 25),
(15, 'britannia bourbon', 781, 'britannia_bourbon_chocolate_flavor_cream_biscuit.jpg', 100, 1, 10, 'britannia bourbon chocalte flavour cream biscuit with extra sugar', 25),
(16, 'Good day chocolate', 412, 'britannia_good_day_cookies_choco_nut_biscuit.jpg', 100, 1, 30, 'britannia good day cookies chocolate flavour', 25),
(17, 'Good day elaichi', 458, 'britannia_good_day_nuts_elaichi_biscuit.jpg', 100, 1, 10, 'britannia good day nuts elaichi biscuit', 25),
(18, 'Little heart', 986, 'britannia_little_hearts_biscuit.jpg', 50, 1, 10, 'britannia heart shape namkeen and sweet little biscuits', 25),
(19, 'Marrie gold', 582, 'britannia_marie_gold_biscuit.jpg', 100, 1, 10, 'britannia marrie gold simple tea suppliment biscuit', 25),
(20, 'Milk bikis', 862, 'britannia_milk_bikis_biscuit.jpg', 100, 1, 10, 'britannia original milk bikis biscuit', 25),
(21, 'Cream Milk bikis', 472, 'britannia_milk_bikis_cream_biscuit.jpg', 150, 1, 25, 'britannia milk bikis with extra milk flavour cream', 25),
(22, 'coconut biscuit', 185, 'britannia_nice_time_sugar_showered_coconut_biscuit.jpg', 100, 1, 10, 'britannia coconut with sugar added showred biscuit', 25),
(23, 'Nutri fibre', 147, 'britannia_nutri_choice_hi_fibre_digestive_biscuit.jpg', 250, 1, 50, 'britannia nuticious high fibre digestive biscuit', 25),
(24, 'jim-jam', 235, 'britannia_treat_jim_jam_biscuit.jpg', 150, 1, 20, 'britannia treat jim jam biscuit', 25),
(25, 'cadbury oreo', 186, 'cadbury_oreo_choco_creme_biscuit.jpg', 100, 1, 15, 'cadbury oreo chocolate biscuit with milk flavor cream', 17),
(26, 'Hide and Seek', 752, 'parle_and_hide_seek_chocolate_biscuit.jpg', 150, 1, 25, 'parle hide and seek chocolate biscuit with extra granules of chocolates', 26),
(27, 'krack-jack', 142, 'parle_krack_jack_biscuit.jpg', 100, 1, 10, 'parle crack jack sweet bhi and salti bhi', 26),
(28, 'Sandalwood agarbatti', 145, 'devdarshan_aura_sandalwood_agarbatti.jpg', 50, 9, 14, 'devdarshan aura snadalwood fragrance agarbatti', 27),
(29, 'Deep-sandal agarbatti', 87, 'devdarshan_deep_sandal_puja_agarbatti.jpg', 40, 9, 85, '', 27),
(30, 'Dhoop agarbatti', 73, 'devdarshan_lavender_dhoop_agarbatti.jpg', 60, 9, 55, 'devdarshan lavender fragrance dhoop agarbatti', 27),
(31, 'Bouquet agarbatti', 46, 'mangaldeep_bouquet_agarbatti.jpg', 40, 9, 49, 'mandaldeep classic bouquet agarbatti moderate fragrance', 28),
(32, 'Temple agarbatti', 186, 'mangaldeep_temple_gold_agarbatti.jpg', 60, 9, 80, 'maggaldeep gold agarbatti especially for temple purpose', 28),
(33, 'Darvesh agarbatti', 74, 'moksha_darvesh_agarbatti.jpg', 70, 9, 110, 'moksha classic darvesh agarbatti', 29),
(34, 'Royal agarbatti', 80, 'moksha_exotic_royal_agarbatti.jpg', 30, 9, 240, NULL, 29),
(35, 'Swarn kalash agarbatti', 120, 'moksha_swarn_kalash_agarbatti.jpg', 80, 9, 50, 'moksha swarn kalash moderate fragrance agarbatti', 29),
(36, 'Swarn-mogra agarbatti', 110, 'moksha_swarna_mogara_agarbatti.jpg', 90, 9, 45, 'moksha mogra fragrance exotic agarbatti', 29),
(37, 'swarn night-queen agarbatti', 214, 'moksha_swarna_night_queen_agarbatti.jpg', 100, 9, 65, 'moksha light fragrance night use agarbatti', 29),
(40, 'swarn-chandan agarbatti', 78, 'moksha_swarna_chandan_agarbatti.jpg', 80, 9, 80, 'moksha swarna chnandan moderate fragrance daily use agarbatti', 29),
(41, 'Swarna-purple agarbatti', 98, 'moksha_swarna_purple_jewel_dhoop_agarbatti.jpg', 90, 9, 280, 'moksha premium category occassional use purple agarbatti', 29),
(46, 'singapore_noodle', 782, 'chings_singapore_noodle.jpg', 70, 10, 10, 'chings noodles of singapore style', 22),
(47, 'mast masala noodle', 80, 'knorr_mast_masala_noodle.jpg', 70, 10, 12, 'Knorr indian style mast masala noodle', 23),
(48, 'Maggi Amritsari achari noodle', 450, 'maggi_amritsari_achari_noodle.jpg', 70, 10, 12, 'Maagi with Amritsari style noodel', 31),
(49, 'Maggi Bengali masala noodle', 450, 'maggi_bengali_masala_noodle.jpg', 70, 10, 12, 'Maggi in favourte west bengal style', 31),
(50, 'Maggi Hot head peri-peri noodle', 340, 'maggi_hot_heads_peri_peri_noodles.jpg', 70, 10, 22, 'Maggi in your favorite peri peri style', 31),
(51, 'maggi masala noodle', 641, 'maggi_masala_noodle.jpg', 150, 10, 25, 'maggi orininal masala noodle', 31),
(52, 'Maggi Mumbaiya noodle', 422, 'maggi_mumbaiya_noodle.jpg', 70, 10, 12, 'maggi famous mumbai style noodle', 31),
(53, 'yippee magic masala', 491, 'sunfeast_magic_masala_noodle.jpg', 180, 10, 25, 'Yipee magic masala noodle pack of 2', 24),
(54, 'Yippee noodle', 319, 'Sunfeast_Yipee_normal_noodle.jpg', 75, 10, 10, 'Yipee normal classic noodle', 24),
(55, 'Yippee classic masala', 211, 'sunfeast_yippee_classic_masala_noodle.jpg', 180, 10, 25, 'Yipee Claasic spicy noodle pack of 2', 24),
(56, 'Classic rock salt', 143, 'crystamin_classic_rock_salt.jpg', 200, 8, 30, 'Crystamin classic pure rock salt powder', 32),
(57, 'Natural Himalayan pink rock salt', 120, 'crystamin_natural_himalyan_pink_rock_salt.jpg', 150, 8, 50, 'Pure himalyan pink rock salt powder', 32),
(58, 'Tata lite', 850, 'tata_lite_salt.jpg', 500, 8, 18, 'Tata lite salt', 33),
(59, 'Tata salt', 898, 'tata_salt.jpg', 500, 8, 16, 'Tata original salt', 33),
(60, 'Sohan papdi', 450, 'aakash_sohan_papdi.jpg', 250, 6, 140, 'aakash classic sohan papdi', 16),
(61, 'miniature milk silk', 218, 'cadbury_miniatures_dairy_milk_silk_chocolate.jpg', 400, 6, 840, 'Cadbury miniatures dairy milk silk chocolate', 17),
(62, 'rocher 6 pack', 280, 'ferrero_rocher_6pack_chocolate.jpg', 240, 6, 480, 'Ferrero rocher 6 pack chocolate', 18),
(63, 'Rocher 25 pack', 185, 'ferrero_rocher_premium_chocolate.jpg', 500, 6, 1250, 'Ferrerp rocher premium chocolate family pack', 18),
(64, 'Rasmalai', 637, 'gits_rasmalai.jpg', 500, 6, 240, 'Gits homemade rasmali powder', 19),
(65, 'Petha', 855, 'haldiram_agra_wale_petha.jpg', 250, 6, 85, 'Haldiram petha of Agra', 7),
(66, 'Gold sohanpapdi', 450, 'haldiram_gold_sohanpapdi.jpg', 250, 6, 330, 'Haldiram Gold premium sohanpapdi', 7),
(67, 'Gulabjamun', 889, 'haldiram_gulab_jamun.jpg', 500, 6, 250, 'Haldiram gulab jamun', 7),
(68, 'Sweets pack', 264, 'haldiram_pack_fest_special_sweet.jpg', 1250, 6, 1450, 'Haldiram festival special settes pack', 7),
(69, 'Rasgulla', 878, 'haldiram_rasgulla.jpg', 500, 6, 250, 'Haldiram rasgulla', 7),
(70, 'Sohan papdi', 980, 'haldiram_soan_papdi.jpg', 250, 6, 90, 'Haldiram classic sohan padi', 7),
(71, 'Gulabjamun powder', 580, 'mtr_gulab_jamun.jpg', 500, 6, 80, 'MTR premium gulab jamun powder', 21),
(72, 'Rasgulla', 336, 'roopji_rasgulla.jpg', 500, 6, 190, 'Roopji rasgulla', 20),
(73, 'Dabur red', 580, 'dabur_red_ayurvedic_toothpaste.jpg', 100, 7, 60, 'Dabur red ayurvedic toothpaste', 36),
(74, 'Close-up everfresh', 410, 'close_up_ever_fresh_red_hot_gel_toothpaste.jpg', 110, 7, 40, 'Close-up everfresh red hot gel toothpaste', 35),
(75, 'Colgate Active salt', 380, 'colgate_active_salt_minerals_toothpaste.jpg', 100, 7, 42, 'Colgate active salt mineral toothpaste', 34),
(76, 'Colgate barbie', 196, 'colgate_barbie_strawberry_kids_toothpaste.jpg', 100, 7, 76, 'Colgate barbie strawberry kids toothpaste', 34),
(77, 'Colgate maxfresh gel', 435, 'colgate_maxfresh_spicy_red_gel_toothpaste.jpg', 200, 7, 96, 'Colgate maxfresh spicy red gel toothpaste', 34),
(78, 'Naturak herbal', 96, 'colgate_natural_herbal_toothpaste.jpg', 100, 7, 64, 'Colgate natural herbal toothpaste', 34),
(79, 'Total charcoal', 112, 'colgate_total_charcoal_toothpaste.jpg', 100, 7, 125, 'Colgate total charcoal toothpaste', 34),
(80, 'Dabur meswak', 45, 'dabur_meswak_toothpaste.jpg', 100, 7, 65, 'Dabur meswak toothpaste', 36),
(81, 'Dant kanti Regular', 225, 'patanjali_dant_kanti_regular_toothpaste.jpg', 100, 7, 85, 'Patanjali dant kanti regular toothpaste', 1),
(82, 'Pepsodent salt', 89, 'pepsodent_clove_and_salt_toothpaste.jpg', 100, 7, 44, 'Pepsodent clove and salt toothpaste', 37),
(83, 'Pepsodent germicheck', 129, 'pepsodent_germicheck_toothpaste.jpg', 100, 7, 65, 'Pepsodent germicheck toothpaste', 37),
(84, 'Himalaya Active care', 110, 'himalaya_active_fresh_gel_toothpaste.jpg', 100, 7, 80, 'Himalaya active fresh gel toothpaste', 4),
(85, 'Complete care', 63, 'himalaya_complete_care_toothpaste.jpg', 100, 7, 65, 'Himalaya complete care toothpaste', 4),
(86, 'Ambay santique', 54, 'ambay_satinique_shampoo.jpg', 80, 2, 112, 'Ambay santique shampoo', 6),
(87, 'Ayur natural', 887, 'ayur_natural_shampoo.jpg', 150, 2, 185, 'Ayur natural shampoo', 2),
(88, 'Dove intense repair', 229, 'dove_intense_repair_Conditioner.jpg', 100, 2, 114, 'Dove intense repair conditioner', 12),
(89, 'Head and shoulder', 365, 'head_and_shoulder_shampoo.jpg', 120, 2, 135, 'Head and shoulder lemon shampoo', 3),
(90, 'Neem soap', 234, 'himalaya_neem_soap.jpg', 50, 2, 23, 'Himalaya neem soap', 4),
(91, 'Chandan soap', 87, 'khadi_chandan_soap.jpg', 40, 2, 20, 'Khadi chandan soap', 13),
(92, 'Neem soap', 68, 'khadi_neem_soap.jpg', 40, 2, 20, 'Khadi neem soap', 13),
(93, 'Lifebuoy lemonfresh', 653, 'lifebuoy_lemonfresh_soap.jpg', 60, 2, 24, 'Lifebuoy lemonfresh soap', 14),
(94, 'Fresh splesh', 235, 'lux_fresh_splash_soap.jpg', 60, 2, 18, 'Lux fresh splash soap', 10),
(95, 'Soft touch', 326, 'lux_soft_touch_soap.jpg', 60, 2, 18, 'Lux soft touch soap', 10),
(96, 'Beer shampoo', 529, 'park_avenue_beer_shampoo.jpg', 120, 2, 540, 'Park avenue beer shampoo pack of two', 5),
(97, 'Savlon', 68, 'savlon_soap.jpg', 50, 2, 22, 'Savlon medicare soap', 9),
(98, 'Pantene shiny', 236, 'pantene_shiny_shampoo.jpg', 120, 2, 108, 'Pantene shiny shampoo', 15),
(99, 'masala chai', 163, 'everest_masala_tea.jpg', 50, 4, 20, 'Everest masala tea', 38),
(100, 'Darjeeling tea', 349, 'lipton_darjeeling_tea.jpg', 100, 4, 35, 'Lipton darjeeling tea', 39),
(101, 'Green tea', 486, 'lipton_green_tea.jpg', 100, 4, 58, 'Lipton green tea', 39),
(102, 'Agni', 124, 'tata_tea_agni.jpg', 50, 4, 18, 'Tata tea agni', 33),
(103, 'Agni leaf', 163, 'tata_tea_agni_leaf.jpg', 100, 4, 28, 'Tata tea agni leaf', 33),
(104, 'Chakra Gold', 138, 'tata_tea_chakra_gold_dust_tea.jpg', 250, 4, 180, 'Tata tea chakra gold dust tea', 33),
(105, 'Elaichi tea', 182, 'tata_tea_elaichi_chai.jpg', 150, 4, 60, 'Tata tea elaichi chai', 33),
(106, 'Gold leaf', 94, 'tata_tea_gold_leaf.jpg', 50, 4, 28, 'Tata tea gold leaf', 33),
(107, 'Premium leaf', 138, 'tata_tea_premium_leaf.jpg', 200, 4, 290, 'Tata tea premium leaf', 33),
(108, 'Darjeeling leaf', 167, 'tata_tea_premium_darjeeling_leaf.jpg', 100, 4, 35, 'Tata tea premium darjeeling leaf', 33),
(139, 'Garam masala', 143, 'mdh_masala_garam.jpg', 50, 5, 50, 'MDH garam masala', 40),
(140, 'coriander', 234, 'mtr_powder_coriander.jpg', 100, 5, 80, 'MTR corinder powder', 21),
(141, 'Turmeric', 416, 'mtr_powder_turmeric.jpg', 100, 5, 40, 'MTR turmeric powder', 21),
(142, 'Ajwain', 423, 'mtr_royal_ajwain_whole.jpg', 100, 5, 60, 'MTR royal ajwain whole', 21),
(143, 'Green elaichi', 764, 'mtr_royal_cardamomelaichi_green.jpg', 100, 5, 85, 'MTR royal cardamomelaichi_green', 21),
(144, 'Dalchini', 438, 'mtr_royal_cinnamon_dalchini.jpg', 80, 5, 45, 'MTR royal cinnamon dalchini', 21),
(145, 'Laung', 726, 'mtr_royal_cloves_launga.jpg', 50, 5, 16, 'MTR royal cloves launga', 21),
(146, 'Methi', 462, 'mtr_royal_fenugreek_methi.jpg', 100, 4, 40, 'MTR royal fenugreek methi', 21),
(147, 'Sounf', 249, 'mtr_royal_sounf_green.jpg', 50, 5, 12, 'MTR royal green sonf', 21),
(148, 'Rai', 483, 'mtrroyal_mustard_rai_small.jpg', 100, 5, 30, 'MTR royal mustard small rai', 21),
(149, 'Bajaj Almond drop', 435, 'bajaj_almond_drops_hair_oil.jpg', 100, 8, 85, 'Bajaj almond drops hair oil', 41),
(150, 'Brahmi Amla', 248, 'bajaj_brahmi_amla_ayurvedic_hair_oil.jpg', 80, 8, 40, 'Bajaj brahmi amla ayurvedic hair oil', 41),
(151, 'Anti dandruff oil', 236, 'himalaya_anti_dandruff_hair_oil.jpg', 100, 8, 90, 'Himalaya Anti-dandruff hair oil', 4);



-- Dumping data for table `USER`
INSERT INTO `USER` (`user_id`, `email_id`, `password`, `rol`, `first_name`, `last_name`, `mobile_no`) VALUES
('matt_murdock', 'mattmurdock@gmail.com', '$2y$10$6anE0hcmtXfs6SbujOpZ6ujGweC7utYYbmHuLKKLMB8SEDOCHk5ti', 'user', 'Matt', 'Murdock', '9537073595'),
('jessica_jones', 'jessicajones@gmail.com', '$2y$10$wtSxZirJm3Tec1HJHAiGy.PH65lERfAaJeSy4JCG85PLFtcIh/MbC', 'user', 'Jessica', 'Jones', '9545467532'),
('luke_cage', 'lukecage@gmail.com', '$2y$10$GS0n2BMJoqZhIykK8VQCGuwlxJk/RFaOdKf3y85aIXdgmXz3iuurG', 'user', 'Luke', 'Cage', '8851096873'),
('danny_rand', 'dannyrand@gmail.com', '$2y$10$xG9hXLHtXgN.sbR9.dF8AOkSrtwDET7bp15U55k16QFNy1KGYJFhu', 'user', 'Danny', 'Rand', '8674364356'),
('admin', 'admin@admin.com', '$2y$10$Z3C4cjd8QTw4IfWVKFOcrOk9t0Xv6bBaUAC991V781IDiQYV05Yr.', 'admin', 'admin', 'admin', '123456789');

COMMIT;


