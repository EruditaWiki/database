-- Insert sample categories
INSERT INTO categories (name) VALUES ('Technology');
INSERT INTO categories (name) VALUES ('Science');
INSERT INTO categories (name) VALUES ('Sports');
INSERT INTO categories (name) VALUES ('Entertainment');
INSERT INTO categories (name) VALUES ('Politics');

-- Insert sample users
INSERT INTO users (
        username,
        email,
        first_name,
        last_name,
        password,
        profile_image,
        role
    )
VALUES (
        'johnsmith',
        'johnsmith@example.com',
        'John',
        'Smith',
        '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm',
        'https://i.picsum.photos/id/787/200/200.jpg?hmac=CBLWRcHYFRDgc9zVqCgHmh5o2J6ADdShlYwX6ZKfqA4',
        'user'
    );
    
INSERT INTO users (
        username,
        email,
        first_name,
        last_name,
        password,
        profile_image,
        role
    )
VALUES (
        'janejohnson',
        'janejohnson@example.com',
        'Jane',
        'Johnson',
        '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm',
        'https://i.picsum.photos/id/272/200/200.jpg?hmac=vmCxa6fxNtfd4n-mc7NfZmQJhr8QOgbopPrqx1DZqF0',
        'admin'
    );

-- Insert sample articles
INSERT INTO articles (
        title,
        content,
        author_id,
        category_id,
        cover_image_url,
        views
    )
VALUES (
        'The Benefits of Exercise',
        'Regular exercise has many proven benefits for both physical and mental health. Some of the benefits of exercise include:
        - Improved cardiovascular health: Exercise helps to strengthen the heart and improve circulation, which can help to reduce the risk of heart disease and stroke.
        - Stronger muscles and bones: Regular physical activity can help to build and maintain strong muscles and bones, which can help to reduce the risk of osteoporosis and other conditions that can lead to fractures and falls.
        - Weight management: Exercise can help to control and maintain a healthy body weight, which can reduce the risk of obesity and associated conditions such as diabetes and high blood pressure.
        - Stress relief: Exercise can help to reduce stress and improve mood by releasing endorphins and other feel-good chemicals in the brain.
        - Improved sleep: Exercise can help to improve sleep quality and duration, which can help to reduce the risk of sleep disorders and other health problems.
        Overall, regular exercise can help to improve overall health and well-being, and is an important part of a healthy lifestyle.',
        2,
        2,
        'https://i.picsum.photos/id/354/200/200.jpg?hmac=ykMwenrB5tcaT_UHlYwh2ZzAZ4Km48YOmwJTFCiodJ4',
        50
    );

INSERT INTO articles (
        title,
        content,
        author_id,
        category_id,
        cover_image_url,
        views
    )
VALUES (
        'The History of the Internet',
        'The Internet has come a long way since its humble beginnings in the 1960s. The first version of the Internet, known as ARPANET, was developed by the United States Department of Defense as a way to share information between computers. Over time, the Internet has evolved and grown to become a global network of interconnected computers and devices.
        One of the key developments in the history of the Internet was the creation of the World Wide Web in 1989. The World Wide Web, or simply the Web, is a collection of interconnected documents and other resources, linked by hyperlinks and URLs. The Web made it easy for users to access and share information online, and it quickly became a popular way to communicate and share information.
        Since its inception, the Internet has had a profound impact on society and has revolutionized the way we communicate and access information. Today, the Internet is an integral part of our daily lives, and it continues to evolve and change as new technologies are developed.',
        1,
        1,
        'https://i.picsum.photos/id/5/200/200.jpg?hmac=oN9VtXdJYLSFssji8vCr48JaI-e5Zi4eH9GAiYBB_Ig',
        100
    );

-- Insert sample messages
INSERT INTO messages (author_id, content)
VALUES (1, 'Hello, I just wanted to say hi!');
INSERT INTO messages (author_id, content)
VALUES (2, 'Hi there! How are you doing?');
INSERT INTO messages (author_id, content)
VALUES (1, 'I''m doing well, thanks for asking. How about you?');
INSERT INTO messages (author_id, content)
VALUES (2, 'I''m doing pretty good too, thanks. Just busy with work and stuff.');
INSERT INTO messages (author_id, content)
VALUES (1, 'Same here. Well, I''ll talk to you later!');
