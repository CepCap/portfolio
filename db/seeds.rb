Tag.create(name: 'Креативный')
Tag.create(name: 'Коммуникабельный')
Tag.create(name: 'Любопытный')

cepcap = Portfolio.create(
                first_name: 'Сергей', last_name: 'Сарнецкий',
                photo_link: 'https://pp.userapi.com/c851136/v851136277/375cc/0Y3HKe2UZ7o.jpg',
                about: 'Building some applications atm',
                email: 'test@test.com', phone: '89991233344')
cepcap.tags = Tag.where(id: [2,3])
