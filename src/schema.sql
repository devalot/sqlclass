CREATE TABLE artists (
  id INT NOT NULL PRIMARY KEY,
  name TEXT NOT NULL,
  formation_year INT NOT NULL,
  website TEXT NOT NULL
);

CREATE TABLE albums (
  id INT NOT NULL PRIMARY KEY,
  artist_id INT NOT NULL REFERENCES artists (id),
  name TEXT NOT NULL,
  asin TEXT,
  label TEXT,
  released TEXT NOT NULL,
  price REAL NOT NULL
);

CREATE TABLE songs (
  id INT NOT NULL PRIMARY KEY,
  album_id INT NOT NULL REFERENCES albums (id),
  name TEXT NOT NULL,
  track INT NOT NULL,
  length REAL NOT NULL,
  genre TEXT NOT NULL,
  price REAL NOT NULL
);

INSERT INTO artists (id, name, formation_year, website) VALUES
  (1, 'The Knife', 1999, 'http://theknife.net/'),
  (2, 'Depeche Mode', 1980, 'http://www.depechemode.com/'),
  (3, 'Sneaker Pimps', 1994, 'https://en.wikipedia.org/wiki/Sneaker_Pimps'),
  (4, 'The Wombats', 2003, 'http://www.thewombats.co.uk/'),
  (5, 'London Grammar', 2012, 'http://www.londongrammar.com/'),
  (6, 'The Faint', 1995, 'http://www.thefaint.com/'),
  (7, 'Robert DeLong', 2010, 'https://robertdelong.com/');

INSERT INTO albums (id, artist_id, name, asin, label, released, price) VALUES
  (481, 1, 'The Knife', 'B000EU1N0C', 'Mute Corporation', '2001-02-05', 6.99),
  (22, 1, 'Hannah med H', 'B000EU1N02', 'Rabid Records', '2003-11-26', 6.99),
  (478, 1, 'Deep Cuts', 'B000I0QL0K', 'Mute Corporation', '2003-01-17', 6.99),
  (480, 1, 'Silent Shout', 'B000FWHVKA', 'Mute Corporation', '2006-02-15', 6.99),
  (482, 1, 'We Share Our Mothers'' Health', 'B000GJ28IC', 'Mute Corporation', '2006-05-15', 6.99),
  (479, 1, 'Shaking the Habitual', 'B00B6ELPIU', 'Mute Corporation', '2013-04-05', 6.99),
  (257, 2, 'Speak & Spell', 'B000006Y60', 'Intercord', '1981-10-05', 6.99),
  (247, 2, 'A Broken Frame', NULL, 'Rhino', '1982-09-27', 6.99),
  (249, 2, 'Construction Time Again', 'B005HI7MRE', 'Sire Records', '1983-08-22', 6.99),
  (254, 2, 'Some Great Reward', NULL, 'Mute', '1984-09-24', 6.99),
  (248, 2, 'Black Celebration', 'B000002L9M', 'Sire Records', '1986-03-17', 6.99),
  (252, 2, 'Music for the Masses', 'B000002LCI', 'Sire Records', '1987-09-28', 6.99),
  (246, 2, '101', 'B000002LGW', 'Sire Records', '1989-03-13', 6.99),
  (259, 2, 'Violator', 'B001230JXC', 'Rhino', '1990-02-21', 6.99),
  (255, 2, 'Songs of Faith and Devotion', 'B000LY7XXW', 'Disques Vogue', '1993-03-22', 6.99),
  (258, 2, 'Ultra', NULL, 'Sire Records', '1997-04-14', 6.99),
  (251, 2, 'Exciter', 'B001237AQ6', 'Rhino', '2001-05-10', 6.99),
  (253, 2, 'Playing the Angel', 'B000B2YQX4', 'Sire Records', '2005-10-13', 6.99),
  (256, 2, 'Sounds of the Universe', 'B001IBIQU6', 'Capitol Records', '2009-04-17', 6.99),
  (250, 2, 'Delta Machine', 'B00B69UQJY', 'Columbia', '2013-03-22', 6.99),
  (801, 3, 'Becoming X', 'B000000WCT', 'Virgin Records America', '1996-08-07', 6.99),
  (812, 3, 'Spin Spin Sugar', 'B0000073XL', 'Clean Up Records', '1997-02-26', 6.99),
  (800, 3, 'Becoming RemiXed', 'B00000603K', 'Virgin Records America', '1998-03-10', 6.99),
  (813, 3, 'Splinter', 'B00002759W', 'Clean Up Records', '1999-10-25', 6.99),
  (802, 3, 'Bloodsport', 'B00005UWL9', 'Tommy Boy Music', '2002-01-22', 6.99),
  (807, 3, 'Loretta Young Silks', 'B000078DPR', 'Splinter Industries', '2002-11-25', 6.99),
  (809, 3, 'Sick', 'B000063TTM', 'Splinter Industries', '2002-03-25', 6.99),
  (810, 3, 'SP4', NULL, NULL, '2003-00-00', 6.99),
  (804, 3, 'ICA Home Taping', NULL, NULL, '2004-12-25', 6.99),
  (947, 4, 'A Guide to Love, Loss & Desperation', 'B000TZGQKE', '14th Floor Records', '2007-11-05', 6.99),
  (948, 4, 'This Modern Glitch', 'B003XT7CJM', '14th Floor Records', '2011-04-22', 6.99),
  (978, 4, 'Glitterbug', 'B00R44Q450', '14th Floor Records', '2015-04-03', 6.99),
  (511, 5, 'If You Wait', NULL, 'Columbia', '2013-09-09', 6.99),
  (981, 5, 'If You Wait (Remixes)', NULL, 'Metal & Dust Recordings Ltd.', '2014-05-06', 6.99),
  (982, 5, 'If You Wait (Remixes 2)', NULL, 'Metal & Dust Recordings Ltd.', '2014-08-25', 6.99),
  (359, 6, 'Wet From Birth', 'B0002T7Z2U', 'Saddle Creek Records', '2004-09-04', 6.99),
  (358, 6, 'Fasciinatiion', 'B001ASII8C', 'blank.wav', '2008-08-05', 6.99);

INSERT INTO songs (id, album_id, name, track, length, genre, price) VALUES
  (3890, 481, 'Neon', 1, 248.2, 'Alternative Rock', 0.99),
  (3891, 481, 'Lasagna', 2, 307.3, 'Alternative Rock', 0.99),
  (3892, 481, 'Kino', 3, 192.6, 'Alternative Rock', 0.99),
  (3893, 481, 'I Just Had to Die', 4, 274.5, 'Alternative Rock', 0.99),
  (3894, 481, 'I Take Time', 5, 184.8, 'Alternative Rock', 0.99),
  (3895, 481, 'Parade', 6, 230.8, 'Alternative Rock', 0.99),
  (3896, 481, 'Zapata', 7, 249.3, 'Alternative Rock', 0.99),
  (3897, 481, 'Bird', 8, 273.4, 'Alternative Rock', 0.99),
  (3898, 481, 'N.Y. Hotel', 9, 167.3, 'Alternative Rock', 0.99),
  (3899, 481, 'A Lung', 10, 206.2, 'Alternative Rock', 0.99),
  (3900, 481, 'Reindeer', 11, 435.1, 'Alternative Rock', 0.99),
  (184, 22, 'Real Life Television', 1, 114.0, 'Alternative', 0.99),
  (185, 22, 'Hannah''s Conscious', 2, 223.5, 'Alternative', 0.99),
  (186, 22, 'Handy-Man', 3, 161.2, 'Alternative', 0.99),
  (187, 22, 'High School Poem', 4, 83.3, 'Alternative', 0.99),
  (188, 22, 'New Year''s Eve', 5, 246.0, 'Alternative', 0.99),
  (189, 22, 'Three Boys', 6, 73.2, 'Alternative', 0.99),
  (190, 22, 'This Is Now', 7, 236.0, 'Alternative', 0.99),
  (191, 22, 'The Bridge', 8, 231.9, 'Alternative', 0.99),
  (192, 22, 'Copenhagen', 9, 63.9, 'Alternative', 0.99),
  (193, 22, 'Wanting to Kill', 10, 139.3, 'Alternative', 0.99),
  (194, 22, 'Jens''s Sneaking', 11, 77.9, 'Alternative', 0.99),
  (195, 22, 'Vegetarian Restaurant', 12, 154.7, 'Alternative', 0.99),
  (196, 22, 'At the Café', 13, 160.3, 'Alternative', 0.99),
  (197, 22, 'A Different Way', 14, 75.8, 'Alternative', 0.99),
  (198, 22, 'Poetry by Night', 15, 108.0, 'Alternative', 0.99),
  (199, 22, 'Listen Now', 16, 168.6, 'Alternative', 0.99),
  (3846, 478, 'Heartbeats', 1, 231.5, 'Alternative Rock', 0.99),
  (3847, 478, 'Girls’ Night Out', 2, 217.6, 'Alternative Rock', 0.99),
  (3848, 478, 'Pass This On', 3, 227.9, 'Alternative Rock', 0.99),
  (3849, 478, 'One for You', 4, 228.5, 'Alternative Rock', 0.99),
  (3850, 478, 'The Cop', 5, 43.7, 'Introduction', 0.99),
  (3851, 478, 'Listen Now', 6, 170.1, 'Alternative Rock', 0.99),
  (3852, 478, 'She’s Having a Baby', 7, 130.4, 'Alternative Rock', 0.99),
  (3853, 478, 'You Take My Breath Away', 8, 267.5, 'Alternative Rock', 0.99),
  (3854, 478, 'Rock Classics', 9, 296.3, 'Alternative Rock', 0.99),
  (3855, 478, 'Is It Medicine', 10, 142.9, 'Alternative Rock', 0.99),
  (3856, 478, 'You Make Me Like Charity', 11, 185.5, 'Alternative Rock', 0.99),
  (3857, 478, 'Got 2 Let U', 12, 239.9, 'Alternative Rock', 0.99),
  (3858, 478, 'Behind the Bushes', 13, 254.1, 'Alternative Rock', 0.99),
  (3859, 478, 'Hangin’ Out', 14, 63.8, 'Alternative Rock', 0.99),
  (3860, 478, 'This Is Now', 15, 235.4, 'Alternative Rock', 0.99),
  (3861, 478, 'Handy-Man', 16, 160.2, 'Alternative Rock', 0.99),
  (3862, 478, 'The Bridge', 17, 233.5, 'Alternative Rock', 0.99),
  (3863, 478, 'Pass This On (Dahlbäck and Dahlbäck remix)', 18, 332.7, 'Alternative Rock', 0.99),
  (3864, 478, 'Heartbeats (Rex the Dog remix)', 19, 372.3, 'Alternative Rock', 0.99),
  (3865, 478, 'You Take My Breath Away (Mylo remix)', 20, 431.2, 'Alternative Rock', 0.99),
  (3879, 480, 'Silent Shout', 1, 293.7, 'Pop', 0.99),
  (3880, 480, 'Neverland', 2, 218.3, 'Pop', 0.99),
  (3881, 480, 'The Captain', 3, 368.9, 'Pop', 0.99),
  (3882, 480, 'We Share Our Mothers'' Health', 4, 252.0, 'Pop', 0.99),
  (3883, 480, 'Na Na Na', 5, 147.8, 'Pop', 0.99),
  (3884, 480, 'Marble House', 6, 318.4, 'Pop', 0.99),
  (3885, 480, 'Like a Pen', 7, 373.5, 'Pop', 0.99),
  (3886, 480, 'From Off to On', 8, 237.6, 'Pop', 0.99),
  (3887, 480, 'Forest Families', 9, 248.6, 'Pop', 0.99),
  (3888, 480, 'One Hit', 10, 267.3, 'Pop', 0.99),
  (3889, 480, 'Still Light', 11, 195.6, 'Pop', 0.99),
  (3901, 482, 'We Share Our Mothers'' Health (radio edit)', 1, 213.9, 'Alternative Rock', 0.99),
  (3902, 482, 'We Share Our Mothers'' Health (Trentemøller remix)', 2, 483.0, 'Alternative Rock', 0.99),
  (3903, 482, 'We Share Our Mothers'' Health (Radio Slave remix)', 3, 541.3, 'Alternative Rock', 0.99),
  (3904, 482, 'We Share Our Mothers'' Health (album version)', 4, 242.1, 'Alternative Rock', 0.99),
  (3905, 482, 'Kino (live)', 5, 251.3, 'Alternative Rock', 0.99),
  (3866, 479, 'A Tooth for an Eye', 1, 363.3, 'Dance & DJ', 0.99),
  (3867, 479, 'Full of Fire', 2, 554.9, 'Dance & DJ', 0.99),
  (3868, 479, 'A Cherry on Top', 3, 522.8, 'Dance & DJ', 0.99),
  (3869, 479, 'Without You My Life Would Be Boring', 4, 313.1, 'Dance & DJ', 0.99),
  (3870, 479, 'Wrap Your Arms Around Me', 5, 274.3, 'Dance & DJ', 0.99),
  (3871, 479, 'Crake', 6, 54.8, 'Dance & DJ', 0.99),
  (3872, 479, 'Old Dreams Waiting to Be Realized', 7, 1140.2, 'Dance & DJ', 0.99),
  (3873, 479, 'Raging Lung', 8, 597.0, 'Dance & DJ', 0.99),
  (3874, 479, 'Networking', 9, 401.2, 'Dance & DJ', 0.99),
  (3875, 479, 'Oryx', 10, 34.8, 'Dance & DJ', 0.99),
  (3876, 479, 'Stay Out Here', 11, 641.8, 'Dance & DJ', 0.99),
  (3877, 479, 'Fracking Fluid Injection', 12, 592.9, 'Dance & DJ', 0.99),
  (3878, 479, 'Ready to Lose', 13, 275.1, 'Dance & DJ', 0.99),
  (2157, 257, 'New Life', 1, 222.4, 'Synth Pop', 0.99),
  (2158, 257, 'I Sometimes Wish I Was Dead', 2, 136.9, 'Synth Pop', 0.99),
  (2159, 257, 'Puppets', 3, 236.1, 'Synth Pop', 0.99),
  (2160, 257, 'Boys Say Go!', 4, 185.1, 'Synth Pop', 0.99),
  (2161, 257, 'Nodisco', 5, 253.0, 'Synth Pop', 0.99),
  (2162, 257, 'What’s Your Name?', 6, 162.4, 'Synth Pop', 0.99),
  (2163, 257, 'Photographic', 7, 297.4, 'Synth Pop', 0.99),
  (2164, 257, 'Tora! Tora! Tora!', 8, 271.8, 'Synth Pop', 0.99),
  (2165, 257, 'Big Muff', 9, 261.5, 'Synth Pop', 0.99),
  (2166, 257, 'Any Second Now (Voices)', 10, 155.0, 'Synth Pop', 0.99),
  (2167, 257, 'Just Can’t Get Enough', 11, 221.0, 'Synth Pop', 0.99),
  (2168, 257, 'Dreaming of Me', 12, 241.8, 'Synth Pop', 0.99),
  (2169, 257, 'Ice Machine', 13, 246.3, 'Synth Pop', 0.99),
  (2170, 257, 'Shout', 14, 227.3, 'Synth Pop', 0.99),
  (2171, 257, 'Any Second Now', 15, 188.8, 'Synth Pop', 0.99),
  (2172, 257, 'Just Can’t Get Enough (Schizo mix)', 16, 403.8, 'Synth Pop', 0.99),
  (2013, 247, 'Leave in Silence', 1, 289.3, 'Synth Pop', 0.99),
  (2014, 247, 'My Secret Garden', 2, 286.5, 'Synth Pop', 0.99),
  (2015, 247, 'Monument', 3, 194.2, 'Synth Pop', 0.99),
  (2016, 247, 'Nothing to Fear', 4, 256.2, 'Synth Pop', 0.99),
  (2017, 247, 'See You', 5, 274.4, 'Synth Pop', 0.99),
  (2018, 247, 'Satellite', 6, 281.4, 'Synth Pop', 0.99),
  (2019, 247, 'The Meaning of Love', 7, 186.7, 'Synth Pop', 0.99),
  (2020, 247, 'A Photograph of You', 8, 184.4, 'Synth Pop', 0.99),
  (2021, 247, 'Shouldn''t Have Done That', 9, 192.2, 'Synth Pop', 0.99),
  (2022, 247, 'The Sun and the Rainfall', 10, 305.6, 'Synth Pop', 0.99),
  (2023, 247, 'My Secret Garden (live in Hammersmith, October 1982)', 11, 450.5, 'Synth Pop', 0.99),
  (2024, 247, 'See You (live in Hammersmith, October 1982)', 12, 249.7, 'Synth Pop', 0.99),
  (2025, 247, 'Satellite (live in Hammersmith, October 1982)', 13, 263.9, 'Synth Pop', 0.99),
  (2026, 247, 'Nothing to Fear (live in Hammersmith, October 1982)', 14, 266.6, 'Synth Pop', 0.99),
  (2027, 247, 'The Meaning of Love (live in Hammersmith, October 1982)', 15, 193.3, 'Synth Pop', 0.99),
  (2028, 247, 'A Photograph of You (live in Hammersmith, October 1982)', 16, 210.9, 'Synth Pop', 0.99),
  (2029, 247, 'Now This Is Fun', 17, 204.8, 'Synth Pop', 0.99),
  (2030, 247, 'Oberkorn (It''s a Small Town)', 18, 249.3, 'Synth Pop', 0.99),
  (2031, 247, 'Excerpt from: My Secret Garden', 19, 196.9, 'Synth Pop', 0.99),
  (2044, 249, 'Love, in Itself', 1, 269.1, 'Synth Pop', 0.99),
  (2045, 249, 'More Than a Party', 2, 285.4, 'Synth Pop', 0.99),
  (2046, 249, 'Pipeline', 3, 355.0, 'Synth Pop', 0.99),
  (2047, 249, 'Everything Counts', 4, 239.6, 'Synth Pop', 0.99),
  (2048, 249, 'Two Minute Warning', 5, 253.6, 'Synth Pop', 0.99),
  (2049, 249, 'Shame', 6, 232.0, 'Synth Pop', 0.99),
  (2050, 249, 'The Landscape Is Changing', 7, 289.2, 'Synth Pop', 0.99),
  (2051, 249, 'Told You So', 8, 267.2, 'Synth Pop', 0.99),
  (2052, 249, 'And Then...', 9, 342.6, 'Synth Pop', 0.99),
  (2053, 249, 'Everything Counts (long version)', 10, 440.7, 'Synth Pop', 0.99),
  (2117, 254, 'Something to Do', 1, 227.8, 'Synth Pop', 0.99),
  (2118, 254, 'Lie to Me', 2, 303.7, 'Synth Pop', 0.99),
  (2119, 254, 'People Are People', 3, 232.2, 'Synth Pop', 0.99),
  (2120, 254, 'It Doesn''t Matter', 4, 285.1, 'Synth Pop', 0.99),
  (2121, 254, 'Stories of Old', 5, 194.3, 'Synth Pop', 0.99),
  (2122, 254, 'Somebody', 6, 267.6, 'Synth Pop', 0.99),
  (2123, 254, 'Master and Servant', 7, 252.9, 'Synth Pop', 0.99),
  (2124, 254, 'If You Want', 8, 281.0, 'Synth Pop', 0.99),
  (2125, 254, 'Blasphemous Rumours', 9, 381.7, 'Synth Pop', 0.99),
  (2126, 254, 'If You Want (live in Basel)', 10, 312.2, 'Synth Pop', 0.99),
  (2127, 254, 'People Are People (live in Basel)', 11, 256.3, 'Synth Pop', 0.99),
  (2128, 254, 'Somebody (live in Liverpool)', 12, 268.3, 'Synth Pop', 0.99),
  (2129, 254, 'Blasphemous Rumours (live in Basel)', 13, 331.7, 'Synth Pop', 0.99),
  (2130, 254, 'Master and Servant (live in Basel)', 14, 333.7, 'Synth Pop', 0.99),
  (2131, 254, 'In Your Memory', 15, 241.6, 'Synth Pop', 0.99),
  (2132, 254, '(Set Me Free) Remotivate Me', 16, 253.8, 'Synth Pop', 0.99),
  (2133, 254, 'Somebody (remix)', 17, 264.0, 'Synth Pop', 0.99),
  (2032, 248, 'Black Celebration', 1, 292.0, 'Synth Pop', 0.99),
  (2033, 248, 'Fly on the Windscreen (final)', 2, 321.3, 'Synth Pop', 0.99),
  (2034, 248, 'A Question of Lust', 3, 269.1, 'Synth Pop', 0.99),
  (2035, 248, 'Sometimes', 4, 114.3, 'Synth Pop', 0.99),
  (2036, 248, 'It Doesn''t Matter Two', 5, 172.5, 'Synth Pop', 0.99),
  (2037, 248, 'A Question of Time', 6, 240.7, 'Synth Pop', 0.99),
  (2038, 248, 'Stripped', 7, 253.4, 'Synth Pop', 0.99),
  (2039, 248, 'Here Is the House', 8, 260.1, 'Synth Pop', 0.99),
  (2040, 248, 'World Full of Nothing', 9, 168.7, 'Synth Pop', 0.99),
  (2041, 248, 'Dressed in Black', 10, 154.5, 'Synth Pop', 0.99),
  (2042, 248, 'New Dress', 11, 224.0, 'Synth Pop', 0.99),
  (2043, 248, 'But Not Tonight', 12, 257.6, 'Synth Pop', 0.99),
  (2091, 252, 'Never Let Me Down Again', 1, 287.7, 'Synth Pop', 0.99),
  (2092, 252, 'The Things You Said', 2, 242.9, 'Synth Pop', 0.99),
  (2093, 252, 'Strangelove', 3, 295.5, 'Synth Pop', 0.99),
  (2094, 252, 'Sacred', 4, 289.1, 'Synth Pop', 0.99),
  (2095, 252, 'Little 15', 5, 259.0, 'Synth Pop', 0.99),
  (2096, 252, 'Behind the Wheel', 6, 318.1, 'Synth Pop', 0.99),
  (2097, 252, 'I Want You Now', 7, 224.5, 'Synth Pop', 0.99),
  (2098, 252, 'To Have and to Hold', 8, 171.8, 'Synth Pop', 0.99),
  (2099, 252, 'Nothing', 9, 258.3, 'Synth Pop', 0.99),
  (2100, 252, 'Pimpf', 10, 325.5, 'Synth Pop', 0.99),
  (2101, 252, 'Agent Orange', 11, 305.3, 'Electronica', 0.99),
  (2102, 252, 'Never Let Me Down Again (Aggro mix)', 12, 297.8, 'Electronica', 0.99),
  (2103, 252, 'To Have and to Hold (Spanish Taster)', 13, 156.5, 'Synth Pop', 0.99),
  (2104, 252, 'Pleasure, Little Treasure', 14, 335.8, 'Synth Pop', 0.99),
  (1993, 246, 'Pimpf', 1, 57.9, 'Introduction', 0.99),
  (1994, 246, 'Behind the Wheel', 2, 355.0, 'Synth Pop', 0.99),
  (1995, 246, 'Strangelove', 3, 290.0, 'Synth Pop', 0.99),
  (1996, 246, 'Sacred', 4, 312.1, 'Synth Pop', 0.99),
  (1997, 246, 'Something to Do', 5, 231.5, 'Synth Pop', 0.99),
  (1998, 246, 'Blasphemous Rumours', 6, 309.1, 'Synth Pop', 0.99),
  (1999, 246, 'Stripped', 7, 405.2, 'Synth Pop', 0.99),
  (2000, 246, 'Somebody', 8, 276.3, 'Synth Pop', 0.99),
  (2001, 246, 'The Things You Said', 9, 259.2, 'Synth Pop', 0.99),
  (2002, 246, 'Black Celebration', 10, 294.3, 'Synth Pop', 0.99),
  (2003, 246, 'Shake the Disease', 11, 310.7, 'Synth Pop', 0.99),
  (2004, 246, 'Nothing', 12, 276.8, 'Synth Pop', 0.99),
  (2005, 246, 'Pleasure Little Treasure', 13, 278.7, 'Synth Pop', 0.99),
  (2006, 246, 'People Are People', 14, 299.1, 'Synth Pop', 0.99),
  (2007, 246, 'A Question of Time', 15, 253.0, 'Synth Pop', 0.99),
  (2008, 246, 'Never Let Me Down Again', 16, 400.6, 'Synth Pop', 0.99),
  (2009, 246, 'A Question of Lust', 17, 247.2, 'Synth Pop', 0.99),
  (2010, 246, 'Master and Servant', 18, 270.2, 'Synth Pop', 0.99),
  (2011, 246, 'Just Can''t Get Enough', 19, 241.4, 'Synth Pop', 0.99),
  (2012, 246, 'Everything Counts', 20, 388.1, 'Synth Pop', 0.99),
  (2193, 259, 'World in My Eyes', 1, 267.1, 'Synth Pop', 0.99),
  (2194, 259, 'Sweetest Perfection', 2, 282.4, 'Synth Pop', 0.99),
  (2195, 259, 'Personal Jesus', 3, 294.8, 'Synth Pop', 0.99),
  (2196, 259, 'Halo', 4, 268.6, 'Synth Pop', 0.99),
  (2197, 259, 'Waiting for the Night', 5, 367.5, 'Synth Pop', 0.99),
  (2198, 259, 'Enjoy the Silence', 6, 372.9, 'Synth Pop', 0.99),
  (2199, 259, 'Policy of Truth', 7, 294.1, 'Synth Pop', 0.99),
  (2200, 259, 'Blue Dress', 8, 338.4, 'Synth Pop', 0.99),
  (2201, 259, 'Clean', 9, 333.0, 'Synth Pop', 0.99),
  (2202, 259, 'Dangerous', 10, 261.3, 'Synth Pop', 0.99),
  (2203, 259, 'Memphisto', 11, 241.3, 'Synth Pop', 0.99),
  (2204, 259, 'Sibeling', 12, 197.3, 'Synth Pop', 0.99),
  (2205, 259, 'Kaleid', 13, 257.3, 'Synth Pop', 0.99),
  (2206, 259, 'Happiest Girl (Jack mix)', 14, 298.3, 'Synth Pop', 0.99),
  (2207, 259, 'Sea of Sin (Tonal mix)', 15, 283.2, 'Synth Pop', 0.99),
  (2134, 255, 'I Feel You', 1, 275.6, 'Synth Pop', 0.99),
  (2135, 255, 'Walking in My Shoes', 2, 335.2, 'Synth Pop', 0.99),
  (2136, 255, 'Condemnation', 3, 200.5, 'Synth Pop', 0.99),
  (2137, 255, 'Mercy in You', 4, 258.0, 'Synth Pop', 0.99),
  (2138, 255, 'Judas', 5, 314.5, 'Synth Pop', 0.99),
  (2139, 255, 'In Your Room', 6, 386.9, 'Synth Pop', 0.99),
  (2140, 255, 'Get Right With Me', 7, 233.0, 'Synth Pop', 0.99),
  (2141, 255, 'Rush', 8, 277.7, 'Synth Pop', 0.99),
  (2142, 255, 'One Caress', 9, 213.0, 'Synth Pop', 0.99),
  (2143, 255, 'Higher Love', 10, 357.0, 'Synth Pop', 0.99),
  (2173, 258, 'Barrel of a Gun', 1, 336.4, 'Synth Pop', 0.99),
  (2174, 258, 'The Love Thieves', 2, 394.3, 'Synth Pop', 0.99),
  (2175, 258, 'Home', 3, 343.0, 'Synth Pop', 0.99),
  (2176, 258, 'It''s No Good', 4, 358.6, 'Synth Pop', 0.99),
  (2177, 258, 'Uselink', 5, 141.1, 'Synth Pop', 0.99),
  (2178, 258, 'Useless', 6, 312.3, 'Synth Pop', 0.99),
  (2179, 258, 'Sister of Night', 7, 364.7, 'Synth Pop', 0.99),
  (2180, 258, 'Jazz Thieves', 8, 174.8, 'Synth Pop', 0.99),
  (2181, 258, 'Freestate', 9, 404.2, 'Synth Pop', 0.99),
  (2182, 258, 'The Bottom Line', 10, 267.0, 'Synth Pop', 0.99),
  (2183, 258, 'Insight', 11, 386.3, 'Synth Pop', 0.99),
  (2184, 258, 'Junior Painkiller', 12, 130.0, 'Synth Pop', 0.99),
  (2185, 258, 'Barrel of a Gun (live)', 13, 361.5, 'Synth Pop', 0.99),
  (2186, 258, 'It''s No Good (live)', 14, 247.0, 'Synth Pop', 0.99),
  (2187, 258, 'Useless (live)', 15, 320.0, 'Synth Pop', 0.99),
  (2188, 258, 'Painkiller', 16, 449.2, 'Synth Pop', 0.99),
  (2189, 258, 'Slowblow', 17, 325.2, 'Synth Pop', 0.99),
  (2190, 258, 'Only When I Lose Myself', 18, 274.1, 'Synth Pop', 0.99),
  (2191, 258, 'Surrender', 19, 378.6, 'Synth Pop', 0.99),
  (2192, 258, 'Headstar', 20, 262.2, 'Synth Pop', 0.99),
  (2067, 251, 'Dream On', 1, 260.8, 'Synth Pop', 0.99),
  (2068, 251, 'Shine', 2, 332.6, 'Synth Pop', 0.99),
  (2069, 251, 'The Sweetest Condition', 3, 222.7, 'Synth Pop', 0.99),
  (2070, 251, 'When the Body Speaks', 4, 361.1, 'Synth Pop', 0.99),
  (2071, 251, 'The Dead of Night', 5, 290.4, 'Synth Pop', 0.99),
  (2072, 251, 'Lovetheme', 6, 122.6, 'Synth Pop', 0.99),
  (2073, 251, 'Freelove', 7, 370.8, 'Synth Pop', 0.99),
  (2074, 251, 'Comatose', 8, 204.2, 'Synth Pop', 0.99),
  (2075, 251, 'I Feel Loved', 9, 260.8, 'Synth Pop', 0.99),
  (2076, 251, 'Breathe', 10, 317.9, 'Synth Pop', 0.99),
  (2077, 251, 'Easy Tiger', 11, 125.4, 'Synth Pop', 0.99),
  (2078, 251, 'I Am You', 12, 310.5, 'Synth Pop', 0.99),
  (2079, 251, 'Goodnight Lovers', 13, 228.4, 'Synth Pop', 0.99),
  (2080, 251, 'The Dead of Night (live, 2001-10: Paris)', 14, 314.3, 'Synth Pop', 0.99),
  (2081, 251, 'The Sweetest Condition (live, 2001-10: Paris)', 15, 238.5, 'Synth Pop', 0.99),
  (2082, 251, 'Dream On (live, 2001-10: Paris)', 16, 339.3, 'Synth Pop', 0.99),
  (2083, 251, 'When the Body Speaks (live, 2001-10: Paris)', 17, 423.5, 'Synth Pop', 0.99),
  (2084, 251, 'Breathe (live, 2001-10: Paris)', 18, 320.2, 'Synth Pop', 0.99),
  (2085, 251, 'Freelove (live, 2001-10: Paris)', 19, 453.6, 'Synth Pop', 0.99),
  (2086, 251, 'Easy Tiger (Full version)', 20, 296.2, 'Synth Pop', 0.99),
  (2087, 251, 'Dirt', 21, 299.2, 'Synth Pop', 0.99),
  (2088, 251, 'Freelove', 22, 240.8, 'Synth Pop', 0.99),
  (2089, 251, 'Zenstation', 23, 385.6, 'Synth Pop', 0.99),
  (2090, 251, 'When the Body Speaks (acoustic version)', 24, 360.2, 'Synth Pop', 0.99),
  (2105, 253, 'A Pain That I''m Used To', 1, 251.0, 'Synth Pop', 0.99),
  (2106, 253, 'John the Revelator', 2, 222.0, 'Synth Pop', 0.99),
  (2107, 253, 'Suffer Well', 3, 230.0, 'Synth Pop', 0.99),
  (2108, 253, 'The Sinner in Me', 4, 295.4, 'Synth Pop', 0.99),
  (2109, 253, 'Precious', 5, 246.2, 'Synth Pop', 0.99),
  (2110, 253, 'Macro', 6, 242.4, 'Synth Pop', 0.99),
  (2111, 253, 'I Want It All', 7, 369.7, 'Synth Pop', 0.99),
  (2112, 253, 'Nothing''s Impossible', 8, 261.3, 'Synth Pop', 0.99),
  (2113, 253, 'Introspectre', 9, 102.2, 'Synth Pop', 0.99),
  (2114, 253, 'Damaged People', 10, 207.8, 'Synth Pop', 0.99),
  (2115, 253, 'Lilian', 11, 285.8, 'Synth Pop', 0.99),
  (2116, 253, 'The Darkest Star', 12, 415.1, 'Synth Pop', 0.99),
  (2144, 256, 'In Chains', 1, 413.1, 'Synth Pop', 0.99),
  (2145, 256, 'Hole to Feed', 2, 239.4, 'Synth Pop', 0.99),
  (2146, 256, 'Wrong', 3, 193.7, 'Synth Pop', 0.99),
  (2147, 256, 'Fragile Tension', 4, 249.5, 'Synth Pop', 0.99),
  (2148, 256, 'Little Soul', 5, 211.3, 'Synth Pop', 0.99),
  (2149, 256, 'In Sympathy', 6, 295.0, 'Synth Pop', 0.99),
  (2150, 256, 'Peace', 7, 269.0, 'Synth Pop', 0.99),
  (2151, 256, 'Come Back', 8, 315.9, 'Synth Pop', 0.99),
  (2152, 256, 'Spacewalker', 9, 113.3, 'Synth Pop', 0.99),
  (2153, 256, 'Perfect', 10, 273.5, 'Synth Pop', 0.99),
  (2154, 256, 'Miles Away/The Truth Is', 11, 255.0, 'Synth Pop', 0.99),
  (2155, 256, 'Jezebel', 12, 281.8, 'Synth Pop', 0.99),
  (2156, 256, 'Corrupt / [unknown]', 13, 374.9, 'Synth Pop', 0.99),
  (2054, 250, 'Welcome to My World', 1, 296.6, 'Pop', 0.99),
  (2055, 250, 'Angel', 2, 238.0, 'Pop', 0.99),
  (2056, 250, 'Heaven', 3, 243.3, 'Pop', 0.99),
  (2057, 250, 'Secret to the End', 4, 309.6, 'Pop', 0.99),
  (2058, 250, 'My Little Universe', 5, 263.4, 'Pop', 0.99),
  (2059, 250, 'Slow', 6, 226.0, 'Pop', 0.99),
  (2060, 250, 'Broken', 7, 235.3, 'Pop', 0.99),
  (2061, 250, 'The Child Inside', 8, 254.6, 'Pop', 0.99),
  (2062, 250, 'Soft Touch / Raw Nerve', 9, 203.3, 'Pop', 0.99),
  (2063, 250, 'Should Be Higher', 10, 304.7, 'Pop', 0.99),
  (2064, 250, 'Alone', 11, 267.5, 'Pop', 0.99),
  (2065, 250, 'Soothe My Soul', 12, 318.0, 'Pop', 0.99),
  (2066, 250, 'Goodbye', 13, 303.0, 'Pop', 0.99),
  (6606, 801, 'Low Place Like Home', 1, 278.2, 'Trip Hop', 0.99),
  (6607, 801, 'Tesko Suicide', 2, 228.1, 'Trip Hop', 0.99),
  (6608, 801, '6 Underground', 3, 246.5, 'Trip Hop', 0.99),
  (6609, 801, 'Becoming X', 4, 255.6, 'Trip Hop', 0.99),
  (6610, 801, 'Spin Spin Sugar', 5, 262.0, 'Trip Hop', 0.99),
  (6611, 801, 'Post‐Modern Sleaze', 6, 312.7, 'Trip Hop', 0.99),
  (6612, 801, 'Waterbaby', 7, 252.1, 'Trip Hop', 0.99),
  (6613, 801, 'Roll On', 8, 269.1, 'Trip Hop', 0.99),
  (6614, 801, 'Wasted Early Sunday Morning', 9, 269.4, 'Trip Hop', 0.99),
  (6615, 801, 'Walking Zero', 10, 272.0, 'Trip Hop', 0.99),
  (6616, 801, 'How Do', 11, 304.0, 'Trip Hop', 0.99),
  (6617, 801, '6 Underground (Nellee Hooper edit)', 12, 234.1, 'Trip Hop', 0.99),
  (6711, 812, 'Spin Spin Sugar (radio edit)', 1, 215.5, 'Alternative Rock', 0.99),
  (6712, 812, 'Spin Spin Sugar (album mix)', 2, 263.0, 'Alternative Rock', 0.99),
  (6713, 812, 'Walk the Rain', 3, 300.4, 'Alternative Rock', 0.99),
  (6714, 812, 'How Do', 4, 301.8, 'Alternative Rock', 0.99),
  (6596, 800, 'Spin Spin Sugar (Armand''s Dark Garage mix)', 1, 543.5, 'Trip Hop', 0.99),
  (6597, 800, 'Walking Zero (Tuff & Jam Unda-Vybe Vocal)', 2, 398.8, 'Trip Hop', 0.99),
  (6598, 800, 'Post-Modern Sleaze (Salt City Orchestra Nightclub mix)', 3, 520.2, 'Trip Hop', 0.99),
  (6599, 800, 'Spin Spin Sugar (Armand''s bonus dub)', 4, 331.3, 'Trip Hop', 0.99),
  (6600, 800, 'Post-Modern Sleaze (Reprazent mix)', 5, 423.4, 'Trip Hop', 0.99),
  (6601, 800, '6 Underground (Perfecto mix)', 6, 365.2, 'Trip Hop', 0.99),
  (6602, 800, 'Tesko Suicide (Americruiser mix)', 7, 232.9, 'Trip Hop', 0.99),
  (6603, 800, 'Roll On (Fold mix)', 8, 296.7, 'Trip Hop', 0.99),
  (6604, 800, '6 Underground (The Umbrellas of Ladywell Mix #2)', 9, 246.8, 'Trip Hop', 0.99),
  (6605, 800, 'Post-Modern Sleaze (Flight From Nashville)', 10, 208.8, 'Trip Hop', 0.99),
  (6715, 813, 'Half Life', 1, 293.8, 'Trip Hop', 0.99),
  (6716, 813, 'Low Five', 2, 275.9, 'Trip Hop', 0.99),
  (6717, 813, 'Lightning Field', 3, 251.1, 'Trip Hop', 0.99),
  (6718, 813, 'Curl', 4, 295.8, 'Trip Hop', 0.99),
  (6719, 813, 'Destroying Angel', 5, 266.9, 'Trip Hop', 0.99),
  (6720, 813, 'Empathy', 6, 222.1, 'Trip Hop', 0.99),
  (6721, 813, 'Superbug', 7, 267.9, 'Trip Hop', 0.99),
  (6722, 813, 'Flowers and Silence', 8, 348.0, 'Trip Hop', 0.99),
  (6723, 813, 'Cute Sushi Lunches', 9, 195.7, 'Trip Hop', 0.99),
  (6724, 813, 'Ten to Twenty', 10, 270.3, 'Trip Hop', 0.99),
  (6725, 813, 'Splinter', 11, 286.1, 'Trip Hop', 0.99),
  (6726, 813, 'Wife by Two Thousand', 12, 377.5, 'Trip Hop', 0.99),
  (6618, 802, 'Kiro TV', 1, 223.7, 'Trip Hop', 0.99),
  (6619, 802, 'Sick', 2, 255.0, 'Trip Hop', 0.99),
  (6620, 802, 'Small Town Witch', 3, 288.4, 'Trip Hop', 0.99),
  (6621, 802, 'Black Sheep', 4, 240.1, 'Trip Hop', 0.99),
  (6622, 802, 'Loretta Young Silks', 5, 358.6, 'Trip Hop', 0.99),
  (6623, 802, 'M''aidez', 6, 312.6, 'Trip Hop', 0.99),
  (6624, 802, 'The Fuel', 7, 290.6, 'Trip Hop', 0.99),
  (6625, 802, 'Bloodsport', 8, 324.4, 'Trip Hop', 0.99),
  (6626, 802, 'Think Harder', 9, 283.9, 'Trip Hop', 0.99),
  (6627, 802, 'Blue Movie', 10, 248.3, 'Trip Hop', 0.99),
  (6628, 802, 'Grazes', 11, 403.7, 'Trip Hop', 0.99),
  (6666, 807, 'Loretta Young Silks (album version)', 1, 357.5, 'Trip Hop', 0.99),
  (6667, 807, 'Empathy Low (acoustic)', 2, 262.5, 'Trip Hop', 0.99),
  (6668, 807, 'M''aidez (acoustic)', 3, 309.5, 'Trip Hop', 0.99),
  (6669, 807, 'Loretta Young Silks (acoustic)', 4, 261.4, 'Trip Hop', 0.99),
  (6670, 807, 'Miami Counting', 5, 269.4, 'Trip Hop', 0.99),
  (6689, 809, 'After Every Party I Die', 3, 410.1, 'Trip Hop', 0.99),
  (6690, 810, 'First & Careless Rapture', 1, 240.7, 'Trip Hop', 0.99),
  (6691, 810, 'This Will Make You Love Again', 2, 260.0, 'Trip Hop', 0.99),
  (6692, 810, 'Song Of Imaginary Beings', 3, 317.0, 'Trip Hop', 0.99),
  (6693, 810, '1 Method', 4, 276.8, 'Trip Hop', 0.99),
  (6694, 810, 'Lolita', 5, 319.6, 'Trip Hop', 0.99),
  (6695, 810, 'Ma Fille Concrete', 6, 290.2, 'Trip Hop', 0.99),
  (6696, 810, 'Deviate', 7, 198.2, 'Trip Hop', 0.99),
  (6697, 810, 'Kiss & Swallow', 8, 367.7, 'Trip Hop', 0.99),
  (6698, 810, 'Sailor', 9, 296.8, 'Trip Hop', 0.99),
  (6699, 810, 'Tigers', 10, 358.7, 'Trip Hop', 0.99),
  (6700, 810, 'Subway', 11, 419.5, 'Trip Hop', 0.99),
  (6701, 810, 'Polaroids', 12, 186.1, 'Trip Hop', 0.99),
  (6702, 810, 'Naked But Safe', 13, 351.4, 'Trip Hop', 0.99),
  (6703, 810, 'Missile', 14, 237.1, 'Trip Hop', 0.99),
  (6642, 804, 'The Chauffeur', 1, 337.2, 'Trip Hop', 0.99),
  (6643, 804, 'Golden Brown', 2, 289.5, 'Trip Hop', 0.99),
  (6644, 804, 'Venus as a Boy', 3, 322.5, 'Trip Hop', 0.99),
  (6645, 804, 'Reward', 4, 215.1, 'Trip Hop', 0.99),
  (6646, 804, 'Ashes to Ashes', 5, 337.3, 'Trip Hop', 0.99),
  (6647, 804, 'Superstition', 6, 291.9, 'Trip Hop', 0.99),
  (7774, 947, 'Tales of Girls, Boys & Marsupials', 1, 70.0, 'Pop', 0.99),
  (7775, 947, 'Kill the Director', 2, 161.6, 'Pop', 0.99),
  (7776, 947, 'Moving to New York', 3, 210.6, 'Pop', 0.99),
  (7777, 947, 'Lost in the Post', 4, 186.4, 'Pop', 0.99),
  (7778, 947, 'Party in a Forest (Where''s Laura?)', 5, 206.7, 'Pop', 0.99),
  (7779, 947, 'School Uniforms', 6, 194.0, 'Pop', 0.99),
  (7780, 947, 'Here Comes the Anxiety', 7, 151.3, 'Pop', 0.99),
  (7781, 947, 'Let''s Dance to Joy Division', 8, 191.3, 'Pop', 0.99),
  (7782, 947, 'Backfire at the Disco', 9, 193.0, 'Pop', 0.99),
  (7783, 947, 'Little Miss Pipedream', 10, 252.4, 'Pop', 0.99),
  (7784, 947, 'Dr Suzanne Mattox PhD', 11, 212.5, 'Pop', 0.99),
  (7785, 947, 'Patricia the Stripper', 12, 241.4, 'Pop', 0.99),
  (7786, 947, 'My First Wedding', 13, 274.8, 'Pop', 0.99),
  (7787, 948, 'Our Perfect Disease', 1, 224.4, 'Alternative Rock', 0.99),
  (7788, 948, 'Tokyo (Vampires and Wolves)', 2, 225.6, 'Alternative Rock', 0.99),
  (7789, 948, 'Jump Into the Fog', 3, 232.4, 'Alternative Rock', 0.99),
  (7790, 948, 'Anti-D', 4, 281.3, 'Alternative Rock', 0.99),
  (7791, 948, 'Last Night I Dreamt…', 5, 212.6, 'Alternative Rock', 0.99),
  (7792, 948, 'Techno Fan', 6, 239.3, 'Alternative Rock', 0.99),
  (7793, 948, '1996', 7, 260.5, 'Alternative Rock', 0.99),
  (7794, 948, 'Walking Disasters', 8, 257.2, 'Alternative Rock', 0.99),
  (7795, 948, 'Girls/Fast Cars', 9, 215.8, 'Alternative Rock', 0.99),
  (7796, 948, 'Schumacher the Champagne', 10, 290.3, 'Alternative Rock', 0.99),
  (8017, 978, 'Emoticons', 1, 259.4, 'Alternative Rock', 0.99),
  (8016, 978, 'Give Me a Try', 2, 228.5, 'Alternative Rock', 0.99),
  (8025, 978, 'Greek Tragedy', 3, 209.6, 'Alternative Rock', 0.99),
  (8014, 978, 'Be Your Shadow', 4, 215.7, 'Alternative Rock', 0.99),
  (8018, 978, 'Headspace', 5, 234.1, 'Alternative Rock', 0.99),
  (8020, 978, 'This Is Not a Party', 6, 179.2, 'Alternative Rock', 0.99),
  (8013, 978, 'Isabel', 7, 209.4, 'Alternative Rock', 0.99),
  (8024, 978, 'Your Body Is a Weapon', 8, 237.9, 'Alternative Rock', 0.99),
  (8015, 978, 'The English Summer', 9, 156.7, 'Alternative Rock', 0.99),
  (8023, 978, 'Pink Lemonade', 10, 226.1, 'Alternative Rock', 0.99),
  (8022, 978, 'Curveballs', 11, 219.7, 'Alternative Rock', 0.99),
  (8019, 978, 'Sex and Question Marks', 12, 138.8, 'Alternative Rock', 0.99),
  (8021, 978, 'Flowerball', 13, 227.8, 'Alternative Rock', 0.99),
  (4161, 511, 'Hey Now', 1, 207.3, 'Alternative Rock', 0.99),
  (4162, 511, 'Stay Awake', 2, 185.9, 'Alternative Rock', 0.99),
  (4163, 511, 'Shyer', 3, 187.1, 'Alternative Rock', 0.99),
  (4164, 511, 'Wasting My Young Years', 4, 204.3, 'Alternative Rock', 0.99),
  (4165, 511, 'Sights', 5, 253.0, 'Alternative Rock', 0.99),
  (4166, 511, 'Strong', 6, 265.7, 'Alternative Rock', 0.99),
  (4167, 511, 'Nightcall', 7, 270.5, 'Alternative Rock', 0.99),
  (4168, 511, 'Metal & Dust', 8, 206.9, 'Alternative Rock', 0.99),
  (4169, 511, 'Interlude (live)', 9, 244.5, 'Alternative Rock', 0.99),
  (4170, 511, 'Flickers', 10, 287.2, 'Alternative Rock', 0.99),
  (4171, 511, 'If You Wait', 11, 284.5, 'Alternative Rock', 0.99),
  (4172, 511, 'Maybe', 12, 262.9, 'Alternative Rock', 0.99),
  (4173, 511, 'High Life', 13, 243.5, 'Alternative Rock', 0.99),
  (4174, 511, 'Strong (US radio edit)', 14, 250.5, 'Alternative Rock', 0.99),
  (8044, 981, 'Hey Now (Arty remix)', 1, 351.1, 'Dance & DJ', 0.99),
  (8049, 981, 'Strong (Jonas Rathsman remix)', 2, 383.2, 'Dance & DJ', 0.99),
  (8048, 981, 'Metal & Dust (Friend Within remix)', 3, 388.7, 'Dance & DJ', 0.99),
  (8047, 981, 'Nightcall (Isaac Tichauer remix)', 4, 380.1, 'Dance & DJ', 0.99),
  (8046, 981, 'Strong (RAC remix)', 5, 247.9, 'Dance & DJ', 0.99),
  (8045, 981, 'Hey Now (Sasha remix)', 6, 512.6, 'Dance & DJ', 0.99),
  (8055, 982, 'Strong (Claude VonStroke Remix)', 1, 353.5, 'Alternative Rock', 0.99),
  (8050, 982, 'Strong (Evian Christ Remix)', 2, 205.6, 'Alternative Rock', 0.99),
  (8054, 982, 'Hey Now (Zero 7 Remix)', 3, 413.3, 'Alternative Rock', 0.99),
  (8051, 982, 'Hey Now (Tensnake Remix)', 4, 387.8, 'Alternative Rock', 0.99),
  (8053, 982, 'Sights (Tourist Version)', 5, 313.3, 'Alternative Rock', 0.99),
  (8052, 982, 'Hey Now (UNKLE Remix)', 6, 534.5, 'Alternative Rock', 0.99),
  (3021, 359, 'Desperate Guys', 1, 186.6, 'Alternative Rock', 0.99),
  (3022, 359, 'How Could I Forget?', 2, 197.9, 'Alternative Rock', 0.99),
  (3023, 359, 'I Disappear', 3, 247.2, 'Alternative Rock', 0.99),
  (3024, 359, 'Southern Belles in London Sing', 4, 211.9, 'Alternative Rock', 0.99),
  (3025, 359, 'Erection', 5, 165.4, 'Alternative Rock', 0.99),
  (3026, 359, 'Paranoiattack', 6, 256.7, 'Alternative Rock', 0.99),
  (3027, 359, 'Dropkick the Punks', 7, 148.6, 'Alternative Rock', 0.99),
  (3028, 359, 'Phone Call', 8, 243.0, 'Alternative Rock', 0.99),
  (3029, 359, 'Symptom Finger', 9, 207.9, 'Alternative Rock', 0.99),
  (3030, 359, 'Birth', 10, 199.6, 'Alternative Rock', 0.99),
  (3011, 358, 'Get Seduced', 1, 262.5, 'Electronica/Dance', 0.99),
  (3012, 358, 'The Geeks Were Right', 2, 176.3, 'Electronica/Dance', 0.99),
  (3013, 358, 'Machine in the Ghost', 3, 199.8, 'Electronica/Dance', 0.99),
  (3014, 358, 'Fulcrum and Lever', 4, 202.1, 'Electronica/Dance', 0.99),
  (3015, 358, 'Psycho', 5, 171.3, 'Electronica/Dance', 0.99),
  (3016, 358, 'Mirror Error', 6, 223.1, 'Electronica/Dance', 0.99),
  (3017, 358, 'I Treat You Wrong', 7, 200.3, 'Electronica/Dance', 0.99),
  (3018, 358, 'Forever Growing Centipedes', 8, 233.6, 'Electronica/Dance', 0.99),
  (3019, 358, 'Fish in a Womb', 9, 196.1, 'Electronica/Dance', 0.99),
  (3020, 358, 'A Battle Hymn for Children', 10, 238.4, 'Electronica/Dance', 0.99);
