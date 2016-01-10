import mysql.connector

connector = mysql.connector.connect(user='root', password='vassmate1991', host='localhost')
my_cursor = connector.cursor()


def make_sql_commands_list(sql_file):

	opened_sql_file = open(sql_file, "r")
	sql_commands = opened_sql_file.read()
	opened_sql_file.close()

	formatted_commands = sql_commands.replace("\n", " ")
	splitted_commands = formatted_commands.split(";")
	return splitted_commands


def execute_sql_commands(file):

	for command in make_sql_commands_list(file):

		if len(command) > 0 and command != " ":
			my_cursor.execute(command)


def list_data(file):

	my_cursor.execute("USE meetup_registration_database")

	for command in make_sql_commands_list(file):
		if len(command) > 0 and command != " ":
			my_cursor.execute(command)
			print("\n")
			print("-" * 13)
			print("Result Table:")
			print("-" * 13)
			for row in my_cursor.fetchall():
				print(row)


print("1.Create database\
	\n2.Insert data in tables\
	\n3.Modify some data\
	\n4.Append some tables\
	\n5.Query data\
	\n6.Remove some data\
	\n7.Remove database")

exec_input = input("\nPlease select an option: ")
while not exec_input.isdigit():
	exec_input = input("\nEnter only numbers:")

if exec_input == "1":
	execute_sql_commands("create.sql")

if exec_input == "2":
	execute_sql_commands("insert.sql")
	connector.commit()

if exec_input == "3":
	execute_sql_commands("modify.sql")
	connector.commit()

if exec_input == "4":
	execute_sql_commands("append.sql")
	connector.commit()

if exec_input == "5":
	list_data("query.sql")

if exec_input == "6":
	execute_sql_commands("remove.sql")
	connector.commit()

if exec_input == "7":
	execute_sql_commands("remove_database.sql")
