"""
6. Restaurant Table Reservation System
    Description:
    - A system for managing table reservations at a restaurant.
    
    Requirements:
        - Reserve, update, and cancel reservations.
        - Track table availability (without real-time updates).
        - List all reservations for a given day.
        - Implement a simple waitlist system for overbookings.
"""


class RestaurantReservationSystem:
    def __init__(self):
        self.reservations = {}  # Dictionary to store reservations

    def display_menu(self):
        print("\nRestaurant Table Reservation System")
        print("1. Make a Reservation")
        print("2. Update a Reservation")
        print("3. Cancel a Reservation")
        print("4. View Reservations")
        print("5. Exit")

    def make_reservation(self):
        name = input("Enter customer name: ")
        date = input("Enter reservation date (YYYY-MM-DD): ")
        time = input("Enter reservation time (HH:MM): ")
        people = input("Enter number of people: ")
        key = (date, time)
        if key in self.reservations:
            print(
                "A reservation already exists at this time. Please choose another time."
            )
        else:
            self.reservations[key] = (name, people)
            print(
                f"Reservation made for {name} on {date} at {time} for {people} people."
            )

    def update_reservation(self):
        date = input("Enter reservation date (YYYY-MM-DD) to update: ")
        time = input("Enter reservation time (HH:MM) to update: ")
        key = (date, time)
        if key not in self.reservations:
            print("Reservation not found.")
        else:
            new_date = input("Enter new reservation date (YYYY-MM-DD): ")
            new_time = input("Enter new reservation time (HH:MM): ")
            new_key = (new_date, new_time)
            if new_key in self.reservations:
                print(
                    "A reservation already exists at this time. Please choose another time."
                )
            else:
                self.reservations[new_key] = self.reservations.pop(key)
                print(f"Reservation updated to {new_date} at {new_time}.")

    def cancel_reservation(self):
        date = input("Enter reservation date (YYYY-MM-DD) to cancel: ")
        time = input("Enter reservation time (HH:MM) to cancel: ")
        key = (date, time)
        if key not in self.reservations:
            print("Reservation not found.")
        else:
            del self.reservations[key]
            print("Reservation cancelled.")

    def view_reservations(self):
        if not self.reservations:
            print("No reservations found.")
        else:
            print("\nCurrent Reservations:")
            for (date, time), (name, people) in self.reservations.items():
                print(f"Date: {date}, Time: {time}, Name: {name}, People: {people}")


def main():
    system = RestaurantReservationSystem()
    while True:
        system.display_menu()
        choice = input("Choose an option: ")

        if choice == "1":
            system.make_reservation()
        elif choice == "2":
            system.update_reservation()
        elif choice == "3":
            system.cancel_reservation()
        elif choice == "4":
            system.view_reservations()
        elif choice == "5":
            print("Exiting system. Goodbye!")
            break
        else:
            print("Invalid choice. Please try again.")


if __name__ == "__main__":
    main()
