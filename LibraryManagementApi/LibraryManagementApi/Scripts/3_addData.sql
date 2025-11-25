USE [LibraryManagementDb]
GO

-- حذف دیتاهای قبلی (اگر وجود دارند)
DELETE FROM [dbo].[Books]
DELETE FROM [dbo].[Authors]

-- ریست کردن Identity
DBCC CHECKIDENT ('[dbo].[Authors]', RESEED, 0)
DBCC CHECKIDENT ('[dbo].[Books]', RESEED, 0)
GO

-- درج نویسندگان
SET IDENTITY_INSERT [dbo].[Authors] ON
GO

INSERT INTO [dbo].[Authors] ([Id], [Name], [Description]) VALUES
(1, N'جلال آل احمد', N'نویسنده، مترجم و روشنفکر ایرانی، صاحب سبک در ادبیات معاصر فارسی'),
(2, N'صادق هدایت', N'نویسنده و مترجم ایرانی، از پیشگامان ادبیات مدرن فارسی'),
(3, N'محمود دولت‌آبادی', N'رمان‌نویس و داستان‌نویس معاصر ایران'),
(4, N'احمد محمود', N'نویسنده و رمان‌نویس ایرانی، نگارنده رمان‌های اجتماعی'),
(5, N'بزرگ علوی', N'نویسنده، مترجم و فعال سیاسی ایرانی'),
(6, N'هوشنگ مرادی کرمانی', N'نویسنده و روزنامه‌نگار ایرانی'),
(7, N'سیمین دانشور', N'نویسنده و مترجم برجسته ایرانی'),
(8, N'غلامحسین ساعدی', N'نویسنده، نمایش‌نامه‌نویس و روان‌پزشک ایرانی'),
(9, N'صادق چوبک', N'نویسنده و مترجم ایرانی'),
(10, N'شهرنوش پارسی‌پور', N'نویسنده معاصر ایرانی'),
(11, N'Gabriel Garcia Marquez', N'نویسنده کلمبیایی، برنده جایزه نوبل ادبیات'),
(12, N'Ernest Hemingway', N'نویسنده و روزنامه‌نگار آمریکایی، برنده جایزه نوبل'),
(13, N'George Orwell', N'نویسنده، روزنامه‌نگار و منتقد انگلیسی'),
(14, N'Franz Kafka', N'نویسنده چک-آلمانی، از تأثیرگذارترین نویسندگان قرن بیستم'),
(15, N'Virginia Woolf', N'نویسنده انگلیسی و پیشگام در استفاده از جریان سیال ذهن'),
(16, N'Albert Camus', N'فیلسوف و نویسنده فرانسوی-الجزایری، برنده نوبل'),
(17, N'Fyodor Dostoevsky', N'رمان‌نویس، داستان‌نویس و فیلسوف روسی'),
(18, N'Leo Tolstoy', N'نویسنده روسی، یکی از بزرگترین رمان‌نویسان تاریخ'),
(19, N'Jane Austen', N'نویسنده انگلیسی، معروف به رمان‌های عاشقانه'),
(20, N'Charles Dickens', N'نویسنده و منتقد اجتماعی انگلیسی'),
(21, N'Mark Twain', N'نویسنده و طنزپرداز آمریکایی'),
(22, N'F. Scott Fitzgerald', N'نویسنده آمریکایی، نویسنده عصر جاز'),
(23, N'Harper Lee', N'نویسنده آمریکایی'),
(24, N'J.D. Salinger', N'نویسنده آمریکایی'),
(25, N'Toni Morrison', N'نویسنده آمریکایی، برنده نوبل و پولیتزر'),
(26, N'William Faulkner', N'نویسنده آمریکایی، برنده نوبل'),
(27, N'James Joyce', N'نویسنده ایرلندی، پیشگام مدرنیسم'),
(28, N'Marcel Proust', N'نویسنده فرانسوی'),
(29, N'Hermann Hesse', N'نویسنده و شاعر آلمانی-سوئیسی، برنده نوبل'),
(30, N'Haruki Murakami', N'نویسنده ژاپنی معاصر'),
(31, N'Milan Kundera', N'نویسنده چک-فرانسوی'),
(32, N'Isabel Allende', N'نویسنده شیلیایی'),
(33, N'Paulo Coelho', N'نویسنده برزیلی'),
(34, N'Umberto Eco', N'نویسنده و فیلسوف ایتالیایی'),
(35, N'Salman Rushdie', N'نویسنده بریتانیایی-هندی'),
(36, N'Chinua Achebe', N'نویسنده نیجریه‌ای'),
(37, N'Naguib Mahfouz', N'نویسنده مصری، برنده نوبل'),
(38, N'Orhan Pamuk', N'نویسنده ترک، برنده نوبل'),
(39, N'Elif Shafak', N'نویسنده ترک'),
(40, N'Chimamanda Ngozi Adichie', N'نویسنده نیجریه‌ای'),
(41, N'Margaret Atwood', N'نویسنده کانادایی'),
(42, N'Kazuo Ishiguro', N'نویسنده بریتانیایی-ژاپنی، برنده نوبل'),
(43, N'J.R.R. Tolkien', N'نویسنده انگلیسی، خالق ارباب حلقه‌ها'),
(44, N'J.K. Rowling', N'نویسنده بریتانیایی، خالق هری پاتر'),
(45, N'Stephen King', N'نویسنده آمریکایی، استاد ادبیات ترسناک'),
(46, N'Agatha Christie', N'نویسنده انگلیسی، ملکه جنایی'),
(47, N'Arthur Conan Doyle', N'نویسنده اسکاتلندی، خالق شرلوک هولمز'),
(48, N'Isaac Asimov', N'نویسنده آمریکایی علمی-تخیلی'),
(49, N'Ray Bradbury', N'نویسنده آمریکایی علمی-تخیلی'),
(50, N'Ursula K. Le Guin', N'نویسنده آمریکایی علمی-تخیلی و فانتزی')
GO

SET IDENTITY_INSERT [dbo].[Authors] OFF
GO

-- درج کتاب‌ها
SET IDENTITY_INSERT [dbo].[Books] ON
GO

INSERT INTO [dbo].[Books] ([Id], [Title], [Description], [AuthorId]) VALUES
-- کتاب‌های جلال آل احمد
(1, N'غرب‌زدگی', N'اثری که به بررسی پدیده تقلید کورکورانه از غرب می‌پردازد', 1),
(2, N'نفرین زمین', N'داستانی از زندگی روستاییان و مشکلات آنها', 1),
(3, N'مدیر مدرسه', N'داستان کوتاهی از زندگی آموزشی', 1),
(4, N'سه تار', N'داستان زندگی یک نوازنده سه‌تار', 1),
(5, N'سنگ صبور', N'مجموعه داستان کوتاه', 1),

-- کتاب‌های صادق هدایت
(6, N'بوف کور', N'شاهکار ادبیات معاصر فارسی، روایتی سوررئال', 2),
(7, N'سگ ولگرد', N'داستان کوتاهی دردناک و انسانی', 2),
(8, N'سه قطره خون', N'مجموعه داستان کوتاه', 2),
(9, N'زنده به گور', N'مجموعه داستان', 2),
(10, N'آلاوینه خانم', N'داستان کوتاه', 2),

-- کتاب‌های محمود دولت‌آبادی
(11, N'کلیدر', N'رمان حماسی درباره زندگی روستایی', 3),
(12, N'جای خالی سلوچ', N'رمان سه جلدی درباره انقلاب', 3),
(13, N'سلوک', N'داستان زندگی در خراسان', 3),
(14, N'مرده‌باران', N'مجموعه داستان', 3),
(15, N'گنجشک‌ها هم گریه می‌کنند', N'داستان کوتاه', 3),

-- کتاب‌های احمد محمود
(16, N'همسایه‌ها', N'رمانی درباره زندگی شهری', 4),
(17, N'مدار صفر درجه', N'رمان جنگ', 4),
(18, N'زمین سوخته', N'رمان اجتماعی', 4),
(19, N'داستان شهر من', N'مجموعه داستان', 4),

-- کتاب‌های بزرگ علوی
(20, N'چشمانش', N'رمان زندگی در زندان', 5),
(21, N'پنجاه و سه نفر', N'مجموعه داستان', 5),
(22, N'گیله‌مرد', N'رمان تاریخی', 5),
(23, N'ورق‌پاره‌های زندان', N'خاطرات', 5),

-- کتاب‌های هوشنگ مرادی کرمانی
(24, N'اولین سنگ', N'مجموعه داستان', 6),
(25, N'دل را به دریا زدن', N'مجموعه داستان', 6),

-- کتاب‌های سیمین دانشور
(26, N'سووشون', N'رمان برجسته درباره دوران جنگ جهانی', 7),
(27, N'جزیره سرگردانی', N'رمان', 7),
(28, N'شهری چون بهشت', N'مجموعه داستان', 7),
(29, N'آتش خاموش', N'داستان', 7),

-- کتاب‌های غلامحسین ساعدی
(30, N'زنبور عسل', N'نمایشنامه معروف', 8),
(31, N'ترسناک‌ها', N'مجموعه داستان', 8),
(32, N'آی بی کجا بودی سالار', N'نمایشنامه', 8),
(33, N'دیوار', N'مجموعه داستان', 8),

-- کتاب‌های صادق چوبک
(34, N'تنگسیر', N'داستان کوتاه معروف', 9),
(35, N'روز اول قبر', N'مجموعه داستان', 9),
(36, N'انتری که لوطی‌اش مرده بود', N'داستان کوتاه', 9),
(37, N'سنگ صبور', N'داستان', 9),

-- کتاب‌های شهرنوش پارسی‌پور
(38, N'توبه نصوح', N'رمان فمینیستی', 10),
(39, N'سگ و زمستان بلند', N'رمان', 10),

-- Gabriel Garcia Marquez
(40, N'One Hundred Years of Solitude', N'A landmark of magical realism', 11),
(41, N'Love in the Time of Cholera', N'Epic love story spanning decades', 11),
(42, N'Chronicle of a Death Foretold', N'Short novel based on true events', 11),
(43, N'The Autumn of the Patriarch', N'Portrait of a Latin American dictator', 11),

-- Ernest Hemingway
(44, N'The Old Man and the Sea', N'Tale of an aging fisherman', 12),
(45, N'A Farewell to Arms', N'WWI love story', 12),
(46, N'For Whom the Bell Tolls', N'Spanish Civil War novel', 12),
(47, N'The Sun Also Rises', N'Post-WWI Lost Generation', 12),

-- George Orwell
(48, N'1984', N'Dystopian masterpiece', 13),
(49, N'Animal Farm', N'Political allegory', 13),
(50, N'Homage to Catalonia', N'Spanish Civil War memoir', 13),
(51, N'Down and Out in Paris and London', N'Memoir of poverty', 13),

-- Franz Kafka
(52, N'The Metamorphosis', N'Surreal tale of transformation', 14),
(53, N'The Trial', N'Nightmarish bureaucracy', 14),
(54, N'The Castle', N'Unfinished allegorical novel', 14),
(55, N'Amerika', N'Satire of American dream', 14),

-- Virginia Woolf
(56, N'Mrs Dalloway', N'Stream of consciousness masterpiece', 15),
(57, N'To the Lighthouse', N'Modernist exploration of time', 15),
(58, N'Orlando', N'Fantasy biography', 15),
(59, N'The Waves', N'Experimental novel', 15),

-- Albert Camus
(60, N'The Stranger', N'Existential classic', 16),
(61, N'The Plague', N'Allegorical novel', 16),
(62, N'The Fall', N'Philosophical novel', 16),
(63, N'The Myth of Sisyphus', N'Philosophical essay', 16),

-- Fyodor Dostoevsky
(64, N'Crime and Punishment', N'Psychological thriller', 17),
(65, N'The Brothers Karamazov', N'Philosophical novel', 17),
(66, N'The Idiot', N'Portrait of a pure soul', 17),
(67, N'Notes from Underground', N'Existential novella', 17),
(68, N'Demons', N'Political novel', 17),

-- Leo Tolstoy
(69, N'War and Peace', N'Epic historical novel', 18),
(70, N'Anna Karenina', N'Tragic love story', 18),
(71, N'The Death of Ivan Ilyich', N'Novella about mortality', 18),
(72, N'Resurrection', N'Novel of moral awakening', 18),

-- Jane Austen
(73, N'Pride and Prejudice', N'Romantic comedy of manners', 19),
(74, N'Sense and Sensibility', N'Tale of two sisters', 19),
(75, N'Emma', N'Story of self-delusion', 19),
(76, N'Persuasion', N'Mature romance', 19),
(77, N'Mansfield Park', N'Social satire', 19),

-- Charles Dickens
(78, N'Great Expectations', N'Coming-of-age story', 20),
(79, N'A Tale of Two Cities', N'French Revolution novel', 20),
(80, N'Oliver Twist', N'Story of an orphan', 20),
(81, N'David Copperfield', N'Semi-autobiographical novel', 20),
(82, N'Bleak House', N'Critique of legal system', 20),

-- Mark Twain
(83, N'The Adventures of Tom Sawyer', N'Classic American boyhood', 21),
(84, N'Adventures of Huckleberry Finn', N'American masterpiece', 21),
(85, N'A Connecticut Yankee in King Arthur Court', N'Time travel satire', 21),
(86, N'The Prince and the Pauper', N'Identity swap tale', 21),

-- F. Scott Fitzgerald
(87, N'The Great Gatsby', N'Jazz Age masterpiece', 22),
(88, N'Tender Is the Night', N'Tale of American expatriates', 22),
(89, N'This Side of Paradise', N'Coming-of-age novel', 22),
(90, N'The Beautiful and Damned', N'Portrait of marriage', 22),

-- Harper Lee
(91, N'To Kill a Mockingbird', N'American classic about justice', 23),
(92, N'Go Set a Watchman', N'Controversial sequel', 23),

-- J.D. Salinger
(93, N'The Catcher in the Rye', N'Teenage angst classic', 24),
(94, N'Franny and Zooey', N'Novella pair', 24),
(95, N'Nine Stories', N'Short story collection', 24),

-- Toni Morrison
(96, N'Beloved', N'Ghost story about slavery', 25),
(97, N'Song of Solomon', N'Family saga', 25),
(98, N'The Bluest Eye', N'Debut novel', 25),
(99, N'Sula', N'Friendship story', 25),

-- William Faulkner
(100, N'The Sound and the Fury', N'Stream of consciousness', 26),
(101, N'As I Lay Dying', N'Multiple narrators', 26),
(102, N'Light in August', N'Southern Gothic', 26),
(103, N'Absalom Absalom', N'Family history', 26),

-- James Joyce
(104, N'Ulysses', N'Modernist epic', 27),
(105, N'A Portrait of the Artist as a Young Man', N'Kunstlerroman', 27),
(106, N'Dubliners', N'Short story collection', 27),
(107, N'Finnegans Wake', N'Experimental final work', 27),

-- Marcel Proust
(108, N'In Search of Lost Time Vol 1', N'Monumental work of memory', 28),
(109, N'In Search of Lost Time Vol 2', N'Continuation of masterpiece', 28),

-- Hermann Hesse
(110, N'Siddhartha', N'Spiritual journey', 29),
(111, N'Steppenwolf', N'Psychological novel', 29),
(112, N'The Glass Bead Game', N'Utopian novel', 29),
(113, N'Demian', N'Coming-of-age story', 29),

-- Haruki Murakami
(114, N'Norwegian Wood', N'Nostalgic love story', 30),
(115, N'Kafka on the Shore', N'Surreal adventure', 30),
(116, N'1Q84', N'Dystopian love story', 30),
(117, N'The Wind-Up Bird Chronicle', N'Mystery and war', 30),
(118, N'Colorless Tsukuru Tazaki', N'Meditation on friendship', 30),

-- Milan Kundera
(119, N'The Unbearable Lightness of Being', N'Philosophical love story', 31),
(120, N'The Book of Laughter and Forgetting', N'Political novel', 31),
(121, N'Immortality', N'Meditation on fame', 31),

-- Isabel Allende
(122, N'The House of the Spirits', N'Magical realist family saga', 32),
(123, N'Eva Luna', N'Story of a storyteller', 32),
(124, N'City of the Beasts', N'Young adult adventure', 32),

-- Paulo Coelho
(125, N'The Alchemist', N'Spiritual journey fable', 33),
(126, N'Eleven Minutes', N'Love and sexuality', 33),
(127, N'The Valkyries', N'Spiritual quest', 33),

-- Umberto Eco
(128, N'The Name of the Rose', N'Medieval mystery', 34),
(129, N'Foucaults Pendulum', N'Conspiracy thriller', 34),
(130, N'The Prague Cemetery', N'Historical novel', 34),

-- Salman Rushdie
(131, N'Midnights Children', N'Magical realist epic', 35),
(132, N'The Satanic Verses', N'Controversial masterpiece', 35),
(133, N'Shame', N'Political allegory', 35),

-- Chinua Achebe
(134, N'Things Fall Apart', N'African classic', 36),
(135, N'No Longer at Ease', N'Sequel to Things Fall Apart', 36),
(136, N'Arrow of God', N'Colonial Nigeria', 36),

-- Naguib Mahfouz
(137, N'Palace Walk', N'Cairo Trilogy - Family saga part 1', 37),
(138, N'Palace of Desire', N'Cairo Trilogy - Family saga part 2', 37),
(139, N'Sugar Street', N'Cairo Trilogy - Family saga part 3', 37),
(140, N'Children of the Alley', N'Allegorical novel', 37),

-- Orhan Pamuk
(141, N'My Name Is Red', N'Historical mystery', 38),
(142, N'Snow', N'Political novel', 38),
(143, N'The Museum of Innocence', N'Love story', 38),
(144, N'Istanbul: Memories and the City', N'Memoir', 38),

-- Elif Shafak
(145, N'The Bastard of Istanbul', N'Turkish-Armenian story', 39),
(146, N'The Forty Rules of Love', N'Rumi-inspired novel', 39),
(147, N'10 Minutes 38 Seconds in This Strange World', N'Istanbul story', 39),

-- Chimamanda Ngozi Adichie
(148, N'Half of a Yellow Sun', N'Biafran War novel', 40),
(149, N'Americanah', N'Immigration story', 40),
(150, N'Purple Hibiscus', N'Coming-of-age in Nigeria', 40),

-- Margaret Atwood
(151, N'The Handmaids Tale', N'Dystopian classic', 41),
(152, N'Oryx and Crake', N'Post-apocalyptic', 41),
(153, N'Alias Grace', N'Historical fiction', 41),
(154, N'The Testaments', N'Sequel to Handmaids Tale', 41),

-- Kazuo Ishiguro
(155, N'The Remains of the Day', N'Butler reflection', 42),
(156, N'Never Let Me Go', N'Science fiction drama', 42),
(157, N'Klara and the Sun', N'AI perspective', 42),
(158, N'An Artist of the Floating World', N'Post-war Japan', 42),

-- J.R.R. Tolkien
(159, N'The Hobbit', N'Fantasy adventure', 43),
(160, N'The Lord of the Rings: The Fellowship', N'Epic fantasy part 1', 43),
(161, N'The Lord of the Rings: The Two Towers', N'Epic fantasy part 2', 43),
(162, N'The Lord of the Rings: The Return', N'Epic fantasy part 3', 43),
(163, N'The Silmarillion', N'Middle-earth mythology', 43),

-- J.K. Rowling
(164, N'Harry Potter and the Philosophers Stone', N'Magical beginning', 44),
(165, N'Harry Potter and the Chamber of Secrets', N'Second year adventure', 44),
(166, N'Harry Potter and the Prisoner of Azkaban', N'Time-turner mystery', 44),
(167, N'Harry Potter and the Goblet of Fire', N'Triwizard Tournament', 44),
(168, N'Harry Potter and the Order of the Phoenix', N'Resistance forms', 44),
(169, N'Harry Potter and the Half-Blood Prince', N'Dark secrets', 44),
(170, N'Harry Potter and the Deathly Hallows', N'Final battle', 44),

-- Stephen King
(171, N'The Shining', N'Haunted hotel horror', 45),
(172, N'It', N'Childhood fear personified', 45),
(173, N'The Stand', N'Post-apocalyptic epic', 45),
(174, N'Carrie', N'Telekinetic revenge', 45),
(175, N'Misery', N'Captive author', 45),
(176, N'Pet Sematary', N'Death and resurrection', 45),

-- Agatha Christie
(177, N'Murder on the Orient Express', N'Classic whodunit', 46),
(178, N'And Then There Were None', N'Isolated island mystery', 46),
(179, N'The Murder of Roger Ackroyd', N'Shocking twist', 46),
(180, N'Death on the Nile', N'Egyptian cruise mystery', 46),

-- Arthur Conan Doyle
(181, N'A Study in Scarlet', N'First Sherlock Holmes', 47),
(182, N'The Hound of the Baskervilles', N'Gothic mystery', 47),
(183, N'The Sign of Four', N'Second Holmes novel', 47),
(184, N'The Adventures of Sherlock Holmes', N'Short story collection', 47),

-- Isaac Asimov
(185, N'Foundation', N'Galactic empire series', 48),
(186, N'I Robot', N'Robot stories', 48),
(187, N'The Gods Themselves', N'Parallel universe', 48),
(188, N'Foundation and Empire', N'Series continuation', 48),

-- Ray Bradbury
(189, N'Fahrenheit 451', N'Book-burning dystopia', 49),
(190, N'The Martian Chronicles', N'Mars colonization', 49),
(191, N'Something Wicked This Way Comes', N'Dark carnival', 49),
(192, N'Dandelion Wine', N'Summer nostalgia', 49),

-- Ursula K. Le Guin
(193, N'The Left Hand of Darkness', N'Gender exploration', 50),
(194, N'The Dispossessed', N'Anarchist utopia', 50),
(195, N'A Wizard of Earthsea', N'Fantasy coming-of-age', 50),
(196, N'The Lathe of Heaven', N'Dream-altering reality', 50)

GO

SET IDENTITY_INSERT [dbo].[Books] OFF
GO

-- بررسی تعداد رکوردها
SELECT 'Authors' AS TableName, COUNT(*) AS RecordCount FROM [dbo].[Authors]
UNION ALL
SELECT 'Books' AS TableName, COUNT(*) AS RecordCount FROM [dbo].[Books]
GO