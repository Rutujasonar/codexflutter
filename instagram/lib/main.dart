import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Instagram",
            style: TextStyle(fontStyle: FontStyle.italic),
            selectionColor: Colors.black,
          ),
          actions: [
            Icon(Icons.keyboard_arrow_down_outlined),
            SizedBox(
              width: 139,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border_outlined),
              color: Colors.black,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.message_rounded))
          ],
        ),
         body: SizedBox(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    image: DecorationImage(
                                        image: NetworkImage("https://www.giva.co/cdn/shop/articles/1-min_02509576-3a10-4d87-86fa-4a931a9069d1.jpg?v=1686726964"),fit: BoxFit.fill),),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text("Your Story"),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                    border: Border.all(
                                      color: Colors.red,
                                      width: 5,
                                    ),
                                    color: Color.fromARGB(255, 86, 188, 220),
                                    image: DecorationImage(
                                        image: NetworkImage("data:image/jpeg;base64,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"),fit: BoxFit.fill),),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text("Penelope"),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                    border:
                                        Border.all(color: Colors.red, width: 5),
                                    color: Color.fromARGB(255, 208, 247, 255),
                                    image: DecorationImage(
                                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThVkNxGb-hAKtfULE1XmsuZyRHO2z0tDCG2bAn2rsNcKKg-ARdrgW2i7rMFo1A9j0Sk08&usqp=CAU"),fit: BoxFit.fill),),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text("francesca"),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                    border:
                                        Border.all(color: Colors.red, width: 5),
                                    color: Color.fromARGB(255, 95, 72, 72),
                                    image: DecorationImage(
                                        image:
                                            NetworkImage("data:image/jpeg;base64,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"),fit: BoxFit.fill),),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text("Eloise"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            //color: Color.fromARGB(255, 4, 48, 5),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj-m_nVNWqGo8DIkHmrpxDgIllS7XhLuxxHA&s"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text("Daphne ", style: TextStyle(fontSize: 20)),
                      ),
                      SizedBox(
                        width: 180,
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.more_horiz)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 300,
                    width: 400,
                    child:Image.network (
                      "https://dnm.nflximg.net/api/v6/BvVbc2Wxr2w6QuoANoSpJKEIWjQ/AAAAQZizZ1H37XDTe93-wpO7ORyykEShEuQefDT7QJ9_9DXtigE4x-WKEQI5rDH3NdV4JkxTcIA1X-cmiANpjpmonacYDmaIpwis4_3IEY22bprm7BaSSts-mPQ6AqrLwwY7jRkQUhqjz-VtyGdd5a3krgTULs8.jpg?r=3fd",
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.favorite_outline_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.insert_comment_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.near_me_outlined),
                      SizedBox(
                        width: 240,
                      ),
                      Icon(Icons.bookmark_border_outlined)
                    ],
                  ),
                  Row(
                    children: [
                      Text("Daphne ",style: TextStyle(fontWeight: FontWeight.bold),),
                      
                      Text("this season gave me the love match of my life.")
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            image: DecorationImage(
                                image: NetworkImage ("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUSEhIWFRUXFRcXFRgXGBcXFRcXFxcWFxcVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGy0lHx0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLTctLf/AABEIAKMBNgMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAFAAIDBAYBBwj/xABAEAABAwIEAwYDBgQFAwUAAAABAAIRAwQFEiExBkFREyJhcYGRMqGxIzNywdHwBxRS4RVCYoLxU5KyJDVDwtL/xAAZAQADAQEBAAAAAAAAAAAAAAABAgMABAX/xAAmEQACAgICAwACAQUAAAAAAAAAAQIRAyESMQQyQRNRYRQicYGh/9oADAMBAAIRAxEAPwDOVqmbQeqkYyAntYAlCKVFG7GkJsKSFwhYUjhNIUhCasEYmlOKaVjD6SsNVemrTVjD2qxRVcKzQRMSncKV3xBRu3Cgxi6NMAt+I6N8zzRutgKHFWLZfsmHpmPjuB+/BYSrRJlzthuevQfX2RS9qz3yZOZ3vG/1VK8rw0NH7cdyfIKDk27HpJFW3rEeR0OkwN5ieeilbRDs2TUDpp7AwqzDqCN5+fQovlDJ/wAokzA1JJJgDoJWbBFAyiA2S70/Uq0GawXAExvA5c+icajNgBmJ3JkAdVFTaDqXeg3ShqiWoDrLh5yD7QqmaDuU6oeQ/v7rgodOW56eHmijNnDr1/NdqVSAAT/x4rj3RoFDlk6/3RAEbOsWOBaSDoQRuCvQOD8QqVKkPcTpsvOA0lwjovQv4dgfzAG6aOmCW0b8JKS5bFQhQuV4S5KyUlRHUphz2AiRKnezKSBsFGPvGev0U13u5Sk3+RDr1KVGvJIQ+xH2xVqxcDMGd1WsfviqP4ZfQxV2Kr2A3U9Q90qKwGiL7FXRbU7dlCpVmZCKYQukpjnoBMhxZS7w80lc4hpZiPNJI3sKRli7wSzInjVn2ToQureNAAaJPgFlbILNaFmSzJwsapGYiJVMznypnFoZZUycv6AlSMt3n/KjmDWTcskBFRQHKEpTkZRuGPPJStwV600Ac001WjmgbkZuthZZzVYmNFo72DBGyy+L1+8QByS3uh11Y114AdNVdw64D9lRwNoc8AhEsPphtcgDSUVLdGotPGoQniSv3Sde4J/7u7p7x6o5iLYdosLxNduzOkw2SI8GjL+blpO0FaB998LWjciT4c/zVQ94E/6o8gd1fvaRLnAfvkAPko6FHs4z/C5zfSCNY6akDrqeSkNQMuGZIaRroT58h+/FWaNq+sZnw85IEAKG+cS4u5n9/ktpwLhwd3nDy/VCc+MbGxQ5SoFt4XqBhMQY0ESD4eaHW1BzHFpEHmNZ1116c/Ze3ULNpGwVK+4dpuOeNY1Ov76Lmj5D+nZLxV8PE7zumGz4n9J+q7b1ngQ1sjpuvTrrhenOwXKOBU2bNCf+oQv9G77PNf5U5ZIIPgFX7Mj/ACn2XpF5YNnZUzZN6BPHLYkvGow9KSY5+C9C4G7t0B0DfoFlOI7TsXtewQHDUeI3+oWh4Bf9uCP6W/QLohs5JqnR6hffeeirPVvEfiB8FVqKuHpr+SU/hwfe0/M/QpuONMPASLgKlMnqfoUzG7psVIIOh2U8nuh49AbhpgGeCSPHqp7H74qpwfUmkfMq3Yfen1VF0gfsL1PhKbYjRdrfAUrHZN9FXRZTnFcK45ZmQwvUVSouVEzIgEq3FPMuq8ylISU2tlE9GbxR2cnMEOsLRgeT0RfEpMEjSf2UOsqLX1pJhrRt1K6XUZJo8t2mT3V5mYYEQs/hbBUrAzqZ/wCFYx6/AllPbUabKtw3Tb27HTzSzfJ2NH9muFAsBCbbXADSCdUSxFv0QK2pgOMqX0vJ6RHUDiw66p/DdGS7tOW2qkcYaUywElCHZp7RcxIAbLGXzS5xW0xEd0LM1m6lLX9xePqQYCyKgRCjpcO80JoXHZnN0U2E3vaVHOPVBLY96NDiY1CwPEdvmgzoT8nBoOvg5r1pr/FC52XogNxbEvdTAzAy9s6DK7LJn/t9UP4CyNzoayo6IJqZuv2dOWifQIPe3biS3LBgSdyCQIjyH1KJ3NQU81KpqA4g88pI38i1xHqqtWlla0kauzR46DKR4JaDZVqsGaTzjKOg6nzXpHCLcjQPy1/svM6LiXz7fKF6xwxh5FNrnO1IH/C587pHX4sblZqrfRSVXaKBh2UrhK4kzva2DroeCoPRas0bShlzThFFAZdU5lUKrIRiB84Q+83VoPZLItWZfjLSgx3MVCPQt1+gVz+H33rfwA+6kxCwF32du14aTUk/hAMkdT4eKtYJbdleups2a1oE9AvQxdI8fP7s0mL489txTologndHKgWTxnCar6zKh+Ke74LQ2lOqB9oQfJXhpvRCXQN4puIDWgwTz6LBNxF4dUa15MzqTyWq4yod9rpO2yy11YQC4BSyXyHhVGq4SuZpBs6ySUVw/wC9Pqs/wVZOa3tDsZEI/YO+1KddI37CtxU7sLtiTCkyghS0WwE9bEvQ9ccnJrlmYhcmJ7ioysYtWqSVlzSUpdlI9FTFcO7NmUmV59iNUsdAMdY0XovFtJ8gg6FYfFcK5z5q7i65HnSVSBLm5tAiWCYdFWmf9Q30/wCUPw+7a2oA4S35eq0P+JNNamGiBmCFqgu+kjU4uyAPJCbWzYXgvRrGT3AfBZstL3SDGX5pPpaXQau7FmYARsh3+FFjyZ7u8Jza+gObUc1YOK0oAe4fmFtCu6RUxAjLos1V3K0+I1GObLNvBZqqO8Un06YeoJeySQpcEoBrnJZJJT8Kb9o4FBdjEt5bCc0IdVtKr3M7IOL/ALsAbkOcC32dBWmuG93ZQYBULa7Xu0aHa+AOhPsShJb0NGn2DcW4JrvJqdvTLzGZoBIkCPimfkgmNNq0m06dZo7o7pHMHT30XqdnDKNWmRBZUdmPMyZBnyIWR4mwx1zSFZjTo4ACZdlHM6fi+S44ZpXs9PN4kFG4fDHYPTFWo1sH49XeBA3j6+K9gwinlpNH9OnssTwZh3Z1srhqG6+ZM/ovRaTOSlnlcqD4sOMbZSurpzfgbJ6nYLM4zjNdvx1W0xyEx7ACTstlc4c5+gdA8N/RDb3AWMpvY0GHwc4dlqgxE5+ekiDoQYQx0uxslvowdvj9ye8x+dkxmIMA+MiRuNVqMPvKroFRmvVuoQ9uHiiwUqTSADJJIcTsOUCNPktXgNBvZh0QT+WiORr4HFGS7AV3W7Om97tO+foFh6+K1Lmr2dMkbwesSdfYrf8AGttmpuABA308IKxmHWgBJboToXCJI6EkKuKqsn5Kk2kug3wFhwntnNIc0lokzJ5uB6KexEYm/wAgimBvDQGgaZtPYIdQ/wDdHfhH5ruh0jycl82bG9ByggbGUhdMImQFZCrvsWHXKugmjK8SOLzmjujQeKzmI1HjuNGm/wA5W6x+kAwABZTiXEHtqMeWQA2BpoufLaTotD4W+C7p3epu8Silu09qY6lC+D2mo91SOSN4eftj6rY22lYZVsK24cdxCuALjQnKxERTHKRROWCQvCjhSuTUAE9npKSjY6EkrQ6dHb0vNOKm6yNei45gXd1aC+FarmzDKBt+qzdam8SDtzVfjs8+fZl7lkPhoRWztTLHncOHnuqVWtD5A2KnZiDn1GDYZhp6qSeiquj0rEQOyb5LJ1K5BIbzWuv2fYt8lkLytrAat9KPo7R0aZQO4eZOqL27pa71Qqi8B/eGiX6GtBqwP2IQ2t8RRikQaeiD1viKVdlY9FKlUAccy7hxBrOI2UnYgu1CuWtANOgRS2MXKuy4aUAFOqbJ9T4AnAE2tDqbtYJZlcfL4XH6eymwugaNKXtzjbu66HqCAsbxXjz7fshSdDpznmCPhDXDmDLvZazhLG3XluazaLmhjsjxIjMADLddRqFw+TgafJdM9TxPLjKP45dr/oNrUeyvZE5XtEfTX98loqb9QqN1h9S4f3G5XUwCM3MGc30b7qelQewZXxI6FckoulI6YSSk4hhlYEeKqXVcbKAOKeKU6lLyDwRUbaB5723TqiwYAAAIgKjUMKG8xBjcoe50nYNa5x9mgmFux1EWM0g5h6iViHUoO0Lc3OUtkO99D6grJXgHaQNyfrEfmrYn8J5lasOcOWhLM5/qMekIU1sYofw/qtlhdJraTGiNGifM6n5lZGsIxT/Z+a9OCpI8Kb5TbNoEikEirkwTj/whMv7djrYlzQe6pMe+AK7ZsBpgESISVbY/xAvhKg1tuCBvK5h4+2PqjbaYa2GiAgmH/fH1S1VIZO7DwXUzMlmTkx8qNy7mTCdFgkbk0Lr00LAHpJspIBD+LUJaco1WDxM9m1wOrl6fUZKxfFeGDtA4IpnNOFnmtRhnZQ28iqz8Q+qJ4s3JUICH0yDUb+IfVLJUGqPWLoTQHksQ64Pa5SBC2N3cNbbguOkLz68vW5y4JW0nstGLaD0gAgBC3XjA6HNVM4mY0VKrehxStr4NVdmspV2up93RBq3xFWcHqfZkKndNOZBdjHGfErtJUKLSDqr9JOEsVNk957gTKnwqri90Kdu4yAYhvWTpoPDdOlYsnSswHE192lZ750GjfId1v0JXsP8AA1wOHEaS2u8OHg9rHCfDWPReC3dWT5/QaBbTgfiV9hVDhrTcA2qz+poOhH+oSY8yp5NsXHpHs184ULmm3XK8OLfANgPaeujgQq+LjvmNkuJLynWoW95RcHMbVEno2oMjgehDsshUK1Yh0OPl5Lz8urj/ALPVwPlU330TUlZDlSFQBTduuU7ExVG6qnXcN4E9VXuatZzpphuUdSZPkqFepcueGZ6dNp+I5TIHOJO6pGIytirNrXDnU6ZyBsDNsJOpn0RXDMDpUoc89rU6nYHwH/JRq3w5rG5SToNepPMnxXadtSMxBI3/ACTfwSbRUe5vMNaOsD89fkqNxX7F3da1wIBcQIJHnzhE8Yth2cAfoVl2kgwf2EUga7LLsUdTJLYLC6YP5Hkj1CqHtDhsRKydQQCOR28D0WgwKpNFvgSD7z9CF3eLN3xZweXBVyS2RY98IV+x+BvkqGO/CFesPgb5Lq+nG/UmqnQoBZO+1KN1zoVnrd32hSSGh0w4ai52ip9quCqtZuIQD0+VUpvVsoitET00FOeo0QDiUk2UljG2bKzXE7iCJR2niNL/AKjfdZ7im5Y/LlcHa8tUtk6MBizpq5Y3Vaxwwms1vjK7jry2sCFYwu4Jq5huAqSlcbZnHZouJa0UuzjluvO6lMydVq8SxE139mzkNVmsQc2mczjEe6hOLb0WjJRiF8Lsmhoc/wCaoXYt+0P2rJ6ZgsrieL1K2hJDeTRt69SqtO3a3V2p6JuBPnZ6TgkQ6NlDdXLGnvPaPUT7LB/zJiBt05eyQqoqFG/IbA4pSBnP8ioavErQe4wnxJj5LIvrJvaFNSF5SNVU4rc7RrQ0czufQHRZ3E79z8znHvHQeA6BUnVEyvWkQeWo/ujz0Lxt7K7fjbO0gItyg7DnzCp07eWTzOvryV2yioJnK7p48wpUWC2D8SVbdlSjOalVaQ5p2n/LUb0cCBr4a+GxseJqddrWuOSoAN9jpyK86dSO0f8A5mNCCqPalunL5jwKlkxKXZbFmcP8Hs9O55Kwx3ivKcO4pqUxHdqN/wBUyPJwM+8o5YcaMJ77SzxnM31gSPZck/Hkjth5UPpv5dyUdG2c+qwOPdzAuHUDvEesR6ofYY9TeAWuafIghXaGIh1RobvOvkBr8lFRaZ1rIpLTBfH+POD2spVC18y7L9CqnAOPO/mTSquc41R3Tv3mgmD0GUE+nihvGJHal0jTX0AKzPBeJv8A56gTB+0npALXZgP9srojj5RI5cqxySZ79dU8whZjEKGpjl+5WqpuzBDsToSPEKVDX8MvVEjbn81f4briXsJ3gj5g/kq1YR9f7IfWBDgWb5gR7iflKvhlxkmRzx5QaNHjvwhXrD4G+SH42e4FfsPu2+S9Fex5j9TtzsVm6Z7xWkutj5LNU/jKSY+MsBy60q1gdFr69NjhILtR7rfVsFo/0wkSs0p0YOiUQa/RGb3BGAEjkCVjnXaLk4gVSCr3DqonlCXXPgqVxfkPABgEILIHgaDMkgTb5ySbmjcGbj+TZ/SPZc/lGf0j2Tf8Rp9fkuHEacTJjyXKMef8cW4bctDdAQD7z+ipYdIJjor/ABxctfcMc3bKB9f1VKyyip3nQ3KS48gBzXXHcCD9ijjpqW32kw54Ib+ZWJu7lzjqSTzRXivGzcVc2uRvdpjo0cz4ndZ4mSjdKhHt2T03c/ZcL5K45MQDRYDl0uVYvSzo2Ci00hdLwq2ddD1rNRJVpTt6qCoNE6pWKiJn3QYUFqLe6B4JtrR1MeZHh18CpabO6PJMdVyOBOo2d5GP7eyUoNunSTB0nbkVygA4Fzt9B5nlKko0mvDnCIBjTcn8kg9s5fI6coI3+aIBl/hzWZXchy+eigrU9A+YfAP9/NWbu4z5QdAD9Tr8lVua4Ljz5afvqs6+GRyk3U6xIkGY67es+6lwrF6lKtTf2rxD2zJJAaSA6QeUSoKVLPE6dNY+v6qteU8ryJBjpslatDKTTtHoXH9/Qyu7MszOENyxqDz05Qd1gbC5dTeKjDDmmQfy8lWAUjSlxw4qimfM8srPoDgjHRdWzamzgS2o2Zhzf1EH1R+qZXh/8N8d/l7nI8xTqw09GvHwO+ZHqOi9upPBC48seEqPQwy/JC/q7KeIYbmZpushcsLHQdCCvRg2R4Kk60pgl4aC7+o7+nT0RhFsWeVLRn8SqE0WFwIJGoIg+yJ4efs2+Sp8QN7gPiorzEewtHVYktbIHUr0Iu9nnSWgldO09FmqJ75nxQjhrjCrWqmlWAggw6CIP9KKUj3yhJ2GCovWdyadRtQRLTIlay04uc9wYaWpMCD+qxRKu4M77en+IJUwzimrN9dXhyOBpP1aQIAdrHgvM7yt2Zio1zTEwRGi9ZYZC8/48twa7dP8n5lHItWRxOnRmn4kzx9kLubsPdLeSJG2HRCrhoDzHVRR0BG2q5gkm4OdT5JKijZnI9L7EdAhmOthmnVv1KLoDxLdlpawMzZhPsT+qjDsSW0YjiVvfYs3jt3lGQHl3vyC2HENmRSdcVe6GDQdXHRo915leVs0k812Qa4nPk7op1HSUqDdUwp1M6FIEc9yZK4SmkrBHSuSmkpSsYdmSDkwpArGHOeu0tYTSn0twgwoO2w0CbeUpGyfbHQKVzZCwwEs7o0nOafhdEjyO4+afd1RmLQYAEjxceflCWJ28ahUwM3ms2A52hmJJ9dE+juDEfop6dqG6neNlBVqaoGZbqXLAO6fTUH2P6oc98mSnZZUrWAbo0ayEMTmtVhjgutIlGgWWMKw2rXe2lRpuqPdo1rRJP5AdSdBzX0NwZwlWtaIF1cms+BDP/jp9Wh3xVD4nTTbr5p/B/iClbXZp1QALgNptqHdrwSWsnk18x5tb6e+1HCCSYAEknYDqSp5FemUhJraYJuWclnOJcdo2jM1V4HQbucejRzWd40/inSpZqdllrVNu03ot/DH3h8tPE7Lx3E8Sq3FQ1azy953J+gA0aPAaLKP7M5/oO8Vca1rs5WzTpA6NB7x8XOH0HzW94avhc2tJ7jJAyvGnxt0J9dHf7l4zC1PBGLOpOfSnR/eb+Jo19x/4pn1o0Xs9IdhVKZ28gApGWbAZklATij/ANkJhxR/h7qbkyhpewZ4+6fRDWuDhuDI1WUOKP6hc/xJ/UIWzHodHiF4O4QfH781qgcYENA0WU/xB/8AV8irtvWJbJ3WcmBRS2PbVLpygR1KqPw15JMjVUrqo+nq06Tsu0cZfzafRZDBOztnMJ0SVeljreeiSe2Cj1NBMYxBlG4pGps5jwPOWo2sV/ENkuoHNl+P/wCqihQH/FbG87aVFug1qO5T/lb6fEvMKrkY4nve0qkg5gIY0nmG7n1MoE4rqWopHP22xpKczYphT6Z3QCNKS6VxEw1JcSQMJcSSRCJTUdwoQrFDcIMKDdv8IVkBVrU6KYlYJFc05CpUbQM13PX8giR033VW60BJWMDbyryVRJzpMrsrAEG9E4M6poXZRFJJTg8BQkrkrGL9s8bkTuD9USx7jK9umClWuHOpCBkENaY0BflALz+KUHsj3svXbzGyiuGwVmHoQXCmgrsrGOFS29UtcHN3aQR6dVGSuLBPTLe6pvY17W6OAO/Xkuiq0mA0H1VP+Hlam+i+k8NL2uJaDuWOEmOsODvcI7QogOMABTcaLRdlTsHf9Me6XYP/AKWog5dt2y5o6kD3KHEIIuHuYYIGqnoVO6tLiPDUiQdRss5fWxpOyneJQcGuxVNPor3QzCENo3Lm6ESFcfUQ/NqfNBDFztmHUsXErSrGhSTGPY1muO2D+WqOgZm03FpjUHqEkkuP2RLJ6s8HrFVykkry7Iw6GlPZzXUkEOxjl07JJIgI1xJJAJwqVhgaJJLGYw7qW1+JdSWYUGbbb0/MqxQ+qSSwx16H4oe5/uCSSwGB10riSIol1JJYxxyQSSWCh7HQQR1BV3EW94+ZSSWQGUWp4SSWAMKcUklhg5wYf/WUvN3/AIPXpQOp8ykklkPjOPC7aD7Rn42/UJJJUUfR6FWaF5xxUP8A1DvIfRdSVMvqc2H2AFVDAdT5rqSgjpLVskkknQGf/9k="),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text("Anthony",
                            style: TextStyle(
                              fontSize: 20,
                            )),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.more_horiz)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 300,
                    width: 400,
                    color: Colors.black,
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPMByAlrqyod2EiG5K91A9K1reMEy_5G-yqg&s",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    
                    children: [
                      
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.favorite_outline_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.insert_comment_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.near_me_outlined),
                      SizedBox(
                        width: 240,
                      ),
                      Icon(Icons.bookmark_border_outlined)
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            image: DecorationImage(
                                image: NetworkImage("data:image/jpeg;base64,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"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text("lady whistedown",
                            style: TextStyle(
                              fontSize: 20,
                            )),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.more_horiz)),
                      )
                    ],
                  ),
                  Container(
                    height: 300,
                    width: 400,
                    color: Colors.black,
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROgjzmp15yOkk2_Lxlz1O6cZ43s5SZrEMbZQ&s",
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.favorite_outline_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.insert_comment_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.near_me_outlined),
                      SizedBox(
                        width: 240,
                      ),
                      Icon(Icons.bookmark_border_outlined)
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            image: DecorationImage(
                                image: NetworkImage ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoeZ4gM_k5cNdDRH165L-A5J4OdjUPNBA5rQ&s"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text("lady Danbury",
                            style: TextStyle(
                              fontSize: 20,
                            )),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.more_horiz)),
                      )
                    ],
                  ),
                  Container(
                    height: 300,
                    width: 400,
                    color: Colors.black,
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjN_RWzLd7KIneeJthBki7wBLXGD0bd_yTKQ&s",
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.favorite_outline_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.insert_comment_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.near_me_outlined),
                      SizedBox(
                        width: 240,
                      ),
                      Icon(Icons.bookmark_border_outlined)
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              )),
        ),
      ),
      ),
    );
  }
}
