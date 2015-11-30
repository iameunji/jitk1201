# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Admin.create(
	oneday: false,
	intro_text: "정 인 더 키친은 ‘정이 넘치는 부엌’이라는 뜻입니다.\n2008년, 어느 아파트의 5평 작은 주방에서부터 시작된 요리에 대한 열망은 지속적으로 이어져 오늘날의 정 인 더 키친을 탄생하게 하였습니다.\n바쁜 일상속에서 질좋은 재료로 정성껏 요리한 음식을 누군가와 함께 나누어 먹을 때의 행복을 함께 나누고 싶은 ‘정 인 더 키친’은, 어린이부터 어른까지 나이와 성별을 구분하지 않고 누구나 즐겁게 요리할 수 있는 곳이며, 여러분들의 식탁에 사랑과 정을 듬뿍 담아 올릴 수 있는 특별한 경험을 할 수 있도록 늘 가까이 하고자 합니다.",
	class_1: "한 달에 두 번 3개월간 수강하여 봄, 여름, 가을, 겨울 사계절의 제철재료와 로컬푸드를 이용하여 요리하는 본격 가정식수업입니다.",
	class_2: "시즌별 (소풍, 어린이날, 스승의 날, 설, 추석, 크리스마스, 계절파티 등) 테마에 맞는 요리를 하루 동안 경험해 보는 수업입니다.",
	class_3: "4세~7세 어린이들에게 요리에 대한 동기를 부여해주기 위하여 양질의 동화책을 선별하고 동화책 속의 모티브를 요리와 연계하여 진행하는 수업입니다.",
	class_4: "초등1학년부터 중학생까지 매 월 새로운 테마(제철재료 등)의 요리를 경험하고 초기 자신의 진로경험에 도움을 줄 수 있는 수업입니다.",
	class_5: "원하는 사람과 함께 원하는 시간에 원하는 요리를 배워볼 수 있는 맞춤식클래스입니다."
	)