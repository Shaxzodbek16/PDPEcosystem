class TournamentScoringSystem:
    def __init__(self):
        self.teams = {}
        self.scores = {}
        self.players = {}

    def start(self):
        print("============================================================")
        print("||                                                        ||")
        print("||  Turnir boshlandi !                                    ||")
        print("||  1. Yakka tartibda qatnashish                          ||")
        print("||  2. Jamoa bo'lib qatnashish                            ||")
        print("||  3. Umumiy jamoalar ballarini ko'rish                  ||")
        print("||  4. Yakka tartibdagilar ballarini ko'rish              ||")
        print("||  5. Shartlar va berilgan ballar bilan tanishish        ||")
        print("||  6. Chiqish                                            ||")
        print("============================================================")

    # add players
    def player(self):
        for numberOfPlayer in range(1, 20 + 1):
            NameOfPlayerWhichIsWantJoin = input(
                f"{numberOfPlayer} chi ishtirokchi ismingizni kiriring: "
            )
            howMuchPeopleWilBe = int(input("Shartlar nechta bo'lishini xoxlaysiz? "))
            if NameOfPlayerWhichIsWantJoin in self.players:
                print("ishtirokchi allaqachon ishtirok etyabdi")
                break
            else:
                self.players[NameOfPlayerWhichIsWantJoin] = 0
                for NumberTwo in range(1, howMuchPeopleWilBe + 1):
                    RuleOfGame = input(f"{NumberTwo} chi shartni kiriting: ")
                    pointOfThisTask = int(
                        input(f"{NumberTwo} shartga nechi pointOfThisTask qo'yasiz: ")
                    )
                    self.scores[RuleOfGame] = pointOfThisTask
                    print(f"{RuleOfGame} ga {pointOfThisTask} ball qo'yiladi")
                    print(f"{NameOfPlayerWhichIsWantJoin} shartni bajarishga ketdi")
                    option = int(
                        input(
                            f"{NameOfPlayerWhichIsWantJoin} shartni bajardimi?\n1. xa\n2. yo'q\n(1/2): "
                        )
                    )
                    if option == 1:
                        self.players[NameOfPlayerWhichIsWantJoin] += pointOfThisTask
                    else:
                        print(
                            f"{NameOfPlayerWhichIsWantJoin} shartni bajarmadi va ball olmadi"
                        )
        print(f"ishtirokchi balli: {self.players} ")

    # add teams

    def team(self):
        player_count = int(input("Nechta jamoa bo'lishini hohlaysiz: "))
        for NumberTwo_2 in range(1, player_count + 1):
            teams_name = input(f"{NumberTwo_2} chi Jamoa nomini kiriting: ")
            if teams_name in self.teams:
                howMuchPeopleWilBe = int(
                    input("Shartlar nechta bo'lishini xoxlaysiz? ")
                )
                print("\nJamoa allaqachon ishtirok etyabdi.")
                print("1.Baribir qo'shish")
                print("2.Menu\n")
                optionOfTeam = int(input("Tanlovingizni kiriting: "))
                if optionOfTeam == 1:
                    self.teams[teams_name] = 0
                    for num3 in range(1, howMuchPeopleWilBe + 1):
                        RuleOfGame = input(f"{num3} chi shartni kiriting: ")
                        pointOfThisTask = int(
                            input(f"{num3} shartga nechi ball qo'yasiz: ")
                        )
                        self.scores[RuleOfGame] = pointOfThisTask
                        print(f"{RuleOfGame} ga {pointOfThisTask} ball qo'yiladi")
                        print(f"{teams_name} shartni bajarishga ketdi")
                        option = int(
                            input(f"{teams_name} shartni bajardimi?\n1. xa\n2. yo'q: ")
                        )
                        if option == 1:
                            self.teams[teams_name] += pointOfThisTask
                        else:
                            print(f"{teams_name} shartni bajarmadi va ball olmadi")
                    else:
                        break

            else:
                howMuchPeopleWilBe = int(
                    input("Shartlar nechta bo'lishini xoxlaysiz? \n")
                )
                self.teams[teams_name] = 0
                for num3 in range(1, howMuchPeopleWilBe + 1):
                    RuleOfGame = input(f"{num3} chi shartni kiriting: ")
                    pointOfThisTask = int(
                        input(f"{num3} shartga nechi ball qo'yasiz: ")
                    )
                    self.scores[RuleOfGame] = pointOfThisTask
                    print(f"{RuleOfGame} ga {pointOfThisTask} ball qo'yiladi")
                    print(f"{teams_name} shartni bajarishga ketdi")
                    option = int(
                        input(f"{teams_name} shartni bajardimi?\n1. xa\n2. yo'q: \n")
                    )
                    if option == 1:
                        self.teams[teams_name] += pointOfThisTask
                    else:
                        print(f"{teams_name} shartni bajarmadi va ball olmadi")
        print(f"\nJamoa ballari: {self.teams} ")

    # add rule of game and mark

    # all marks of team
    def overallOfteam(self):
        print(f"\njamoa umumiy ballari: {self.teams}")

    # each other player's mark
    def overallOfplayer(self):
        print(f"\nishtirokchilar umumiy ballari: {self.players}")

    # rules and marks
    def overall(self):
        print(f"\nShartlar va berilgan ballar: {self.scores}")


def main():
    system = TournamentScoringSystem()
    while True:
        system.start()
        choice = input("\nVariantni tanlang: ")

        if choice == "1":
            system.player()
        elif choice == "2":
            system.team()
        elif choice == "3":
            system.overallOfteam()
        elif choice == "4":
            system.overallOfplayer()
        elif choice == "5":
            system.overall()
        elif choice == "6":
            print("tizimdan chiqildi. xayr!")
            break
        else:
            print("Notog'ri variant. qayta urinib ko'ring")


if __name__ == "__main__":
    main()
