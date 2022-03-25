//
//  Data.swift
//  LoanMoney
//
//  Created by Nick Sagan on 21.03.2022.
//

import Foundation

struct Data {
    
    let sideMenu = ["Кредитная история", "Новости", "Долговая книга", "Компании"]
    
    let loans: [Loan] = [
    Loan(logo: "colibri", percent: "под 0%", blue: "от 2000\nдо 30000", violet: "от 1\nдо 30 дней", yellow: "от 0%\nдо 1% в день", url: URL(string: "https://my.saleads.pro/s/ffa71010-a214-11ec-8840-c901a67bae26")!),
    Loan(logo: "smsfinance", percent: "под 0%", blue: "от 3000\nдо 30000", violet: "от 1\nдо 21 дня", yellow: "от 0%\nдо 1% в день", url: URL(string: "https://my.saleads.pro/s/0f3ad550-a214-11ec-b814-d97219863970")!),
    Loan(logo: "migkredit", percent: "под 0%", blue: "от 3000\nдо 100000", violet: "от 5\nдо 21 дня", yellow: "от 0%\nдо 1% в день", url: URL(string: "https://my.saleads.pro/s/73308250-a216-11ec-a6e9-6f515a4495ea")!),
    Loan(logo: "zaimbesplatnij", percent: "под 0%", blue: "от 1000\nдо 80000", violet: "от 5\nдо 21 дней", yellow: "от 0%\nдо 1% в день", url: URL(string: "https://my.saleads.pro/s/adcd2b90-a216-11ec-85c0-178a67aabdb3")!),
    Loan(logo: "smartstart", percent: "под 0,1%", blue: "от 3000\nдо 30000", violet: "от 7\nдо 30 дней", yellow: "от 0,1%\nдо 1% в день", url: URL(string: "https://my.saleads.pro/s/a20abf00-a6f8-11ec-a1ef-1f8a8681464b")!),
    Loan(logo: "vivus", percent: "под 0%", blue: "от 3000\nдо 100000", violet: "от 1\nдо 52 дней", yellow: "от 0%\nдо 1% в день", url: URL(string: "https://my.saleads.pro/s/945a6070-a6f9-11ec-b059-4ff5e90a4559")!),
    Loan(logo: "bistrodengi", percent: "под 30%", blue: "от 50000\nдо 1000000", violet: "от 3\nдо 36 мес", yellow: "от 30%\nдо 88% в год", url: URL(string: "https://my.saleads.pro/s/2ed65d60-a6fa-11ec-8531-df94dc920ba3")!),
    Loan(logo: "horoshiedengi", percent: "под 1%", blue: "от 15000\nдо 50000", violet: "от 0\nдо 1 года", yellow: "от 1%\nдо 10% в день", url: URL(string: "https://my.saleads.pro/s/d8092070-a6fa-11ec-9cd9-5bd032211bbb")!),
    Loan(logo: "srochnodengi", percent: "под 1%", blue: "от 2000\nдо 100000", violet: "от 1\nдо 30 дней", yellow: "1% в день", url: URL(string: "https://my.saleads.pro/s/dd5ccb10-a6fb-11ec-9e0b-9f4be1a0abbf")!),
    Loan(logo: "dengisrazu", percent: "под 1%", blue: "от 1000\nдо 100000", violet: "от 16\nдо 180 дней", yellow: "от 1%\nдо 5% в день", url: URL(string: "https://my.saleads.pro/s/6e4ab540-a6fc-11ec-8544-e3980e4b26ce")!),
    Loan(logo: "bistrodenginaputi", percent: "под 1%", blue: "от 1000\nдо 100000", violet: "от 7\nдо 180 дней", yellow: "от 1%\nдо 5% в день", url: URL(string: "https://my.saleads.pro/s/cdc22e30-a6fc-11ec-9a4b-fbb52bcccf89")!),
    Loan(logo: "cashtoyou", percent: "под 1%", blue: "от 2000\nдо 30000", violet: "от 6\nдо 21 дня", yellow: "1% в день", url: URL(string: "https://my.saleads.pro/s/633f8920-a6fd-11ec-8b40-6bce582d5b30")!)
    ]
    
    let creditCards: [Card] = [
        Card(image: "uralsib", name: "УРАЛСИБ Банк", percent: "от 29,9%", blue: "Лимит\nдо 900 000", violet: "Льготный период\nдо 120 дней", url: URL(string: "https://my.saleads.pro/s/63153720-a700-11ec-bcca-09a8546eb585")!),
        Card(image: "otkritienado", name: "Банк Открытие", percent: "от 39,9%", blue: "Лимит\nдо 1 500 000", violet: "Льготный период\nдо 120 дней", url: URL(string: "https://my.saleads.pro/s/8f1bd4d0-a700-11ec-9d15-07171bf0e30f")!),
        Card(image: "otkritie", name: "Банк Открытие", percent: "от 39,9%", blue: "Лимит\nдо 500 000", violet: "Льготный период\nдо 120 дней", url: URL(string: "https://my.saleads.pro/s/f5ad5fe0-a700-11ec-afd2-177d5cab2f8a")!),
        Card(image: "alfabank", name: "Альфа Банк", percent: "от 11,99%", blue: "Лимит\nдо 500 000", violet: "Льготный период\nдо 1 года", url: URL(string: "https://my.saleads.pro/s/35cf1500-a701-11ec-943e-b77e40b30fad")!),
        Card(image: "halva", name: "Халва", percent: "от 0%", blue: "Лимит\nдо 350 000", violet: "Льготный период\nдо 18 мес", url: URL(string: "https://my.saleads.pro/s/6e01dc10-a701-11ec-b1f7-cbe717a57d08")!)
    ]
    
    let debitCards: [Card] = [
        Card(image: "alfadebmir", name: "Альфа Банк", percent: "Обслуживание\nбесплатное", blue: "Кэшбек\nдо 20%", violet: "% на остаток\nдо 8%", url: URL(string: "https://my.saleads.pro/s/150a6e40-a6fe-11ec-b2cf-718c4571ddb9")!),
        Card(image: "otkritiedeb", name: "Открытие Банк", percent: "Обслуживание\nот 0 рублей", blue: "Кэшбек\nдо 30%", violet: "% на остаток\nдо 11%", url: URL(string: "https://my.saleads.pro/s/b000bc30-a6fe-11ec-919f-17ce0461ee97")!),
        Card(image: "tinkoffdeb", name: "Тинькофф Банк", percent: "Обслуживание\nбесплатное", blue: "Кэшбек\nдо 30%", violet: "% на остаток\nдо 10%", url: URL(string: "https://my.saleads.pro/s/14a00470-a6ff-11ec-a6e0-0d03a795f43e/31")!),
        Card(image: "alfadeb2", name: "Альфа Банк", percent: "Обслуживание\nбесплатное", blue: "Кэшбек\nдо 2%", violet: "% на остаток\nдо 8%", url: URL(string: "https://my.saleads.pro/s/b5a256a0-a6ff-11ec-be0a-2f40e57aa009")!),
        Card(image: "gazpromdeb", name: "Газпромбанк", percent: "Обслуживание\nот 0 рублей", blue: "Кэшбек\nдо 35%", violet: "% на остаток\nдо 17%", url: URL(string: "https://my.saleads.pro/s/29823180-7f00-11ec-aa30-df4e204241c0")!)
    ]
    
    let infotext = """
Микрозайм - основной продукт МФО, который выдается под процент на определенный срок на конкретных условиях. Выдается только на основании подписании договора, который имеет полную юридическую силу.

На законодательном уровне никаких требований ни к статутному капиталу, ни к организационно-правовой форме, где можно взять кредит в МФО на карту в Украине нет. Поэтому собственники компании выбирают форму на свое усмотрение.

Требования к заемщику:
• Возраст от 18 до 75 пет
• Гражданин Украины
• оейстеущий паспорт и ИНН
• Доступ к интернету
• Наличие мобильного
• Наличие банковской карты любого банка Украины Информация по займам:
• Сумма займа от 100 до 30000 грн
• Срок погашения займа от 3 до 365 дней
• Процентная ставка от 0 до 1,5 % На что обратить внимание при оформлении микрозайма?
• Общую величину переплаты по микрозайму. Обязательно используйте онлайн-калькуляторы различных МФО и сравнивайте суммы;
• Минимальный и максимальный сроки кредитования. Многие микрофинансовые компании, занятые именно долгосрочными микрозаймами, не предоставляют деньги на период менее 30-35 дней;
• Доступный лимит. На первое время он может быть

"""
    let news: [News] = [
        News(image: "news1", title: "Микрокредиты в 2022 году.", text: "Займы растут ежедневно в кратном объеме. Спрос на микрокредиты достиг самого высокого уровня за последние два года. Но основатели мфо сообщают, что справляются с данными объемами и только наращивают свои портфели!"),
        News(image: "news2", title: "Был обнародован список лучших онлайн мфо.", text: "В список лучших попали всеми известные «Быстроденьги», «СрочноДеньги», и набирающий обороты «МигКредит». В них, по данным сводки, одни из приятных условий и высокий уровень одобрения займа. При этом деньги получить можно онлайн, не выходя из дома."),
        News(image: "news3", title: "Госдума планирует понижение ставок на микрозаймы.", text: "С середины февраля 2022 года идет обсуждение снижения ставок в мфо до 0,5% Сами же владельцы микрофинансовых организаций сообщают, что данное решение может быть фатальным."),
        News(image: "news4", title: "Микрозаймы не выходя из дома.", text: "Сегодня рынок займов готов предоставить свои услуги даже личностям с плохой кредитной историей. Микрофинансисты не считают проблемой высокий уровень задолженностей у обратившихся клиентов, а наоборот предлагают более удобные условия для микрозайма. При этом оформить можно все через любое устройство с выходом в интернет, а деньги поступят моментально карту.")
    ]
}
