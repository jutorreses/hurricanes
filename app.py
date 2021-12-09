import sqlite3
from sqlite3 import Error

database = r"data.sqlite"

def openConnection(_dbFile):
    print("++++++++++++++++++++++++++++++++++")
    print("Open database: ", _dbFile)

    conn = None
    try:
        conn = sqlite3.connect(_dbFile)
        print("success")
    except Error as e:
        print(e)

    print("++++++++++++++++++++++++++++++++++")

    return conn

def closeConnection(_conn, _dbFile):
    print("++++++++++++++++++++++++++++++++++")
    print("Close database: ", _dbFile)

    try:
        _conn.close()
        print("success")
    except Error as e:
        print(e)

    print("++++++++++++++++++++++++++++++++++")

def viewAtl(_conn):
    print(" *** Viewing Atlantic DB *** ")

    sql = """
        select * from atlantic_o;
        """
        
    _conn.execute(sql)
    
    #from lab 7
    curr = _conn.execute(sql)
    res = curr.fetchall()

    #Print tuples or rows
    print('ID | Name | Date | Time | Low_Wind_NE | Low_Wind_SE | Low_Wind_SW | Low_Wind_NW | Moderate_Wind_NE | Moderate_Wind_SE | Moderate_Wind_SW | Moderate_Wind_NW | High_Wind_NE | High_Wind_SE | High_Wind_SW | High_Wind_NW')
    for row in res:
        #data = '{:<10} {:<20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20}'.format(*row)
        print(' | '.join([str(r) for r in row]))

def viewPac(_conn):
    print(" *** Viewing Pacific DB *** ")

    sql = """
        select * from pacific_o;
        """
        
    _conn.execute(sql)
    
    #from lab 7
    curr = _conn.execute(sql)
    res = curr.fetchall()

    #Print tuples or rows
    print('ID | Name | Date | Time | Low_Wind_NE | Low_Wind_SE | Low_Wind_SW | Low_Wind_NW | Moderate_Wind_NE | Moderate_Wind_SE | Moderate_Wind_SW | Moderate_Wind_NW | High_Wind_NE | High_Wind_SE | High_Wind_SW | High_Wind_NW')
    for row in res:
        #data = '{:<10} {:<20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20}'.format(*row)
        print(' | '.join([str(r) for r in row]))

def addAtl(_conn):
    print(" *** Adding to Atlantic DB *** ")

    ID = input("Input ID Tag(EX: AOP12345): ")
    Name = input("Input Name of Hurricane (EX: 'CARLA'): ")
    Date = input("Input date (Format: YYYY-MM-DD): ")
    Time = input("Input Time in 24 Format (EX: 1300): ")
    Status = input("Input Status of Hurricane: (Ex: HU, TS, TY): ")
    maxWinds = input("Input Max winds speeds in mph: ")



    sql = """
        INSERT INTO atlantic_o(ID,Name,Date,Time,Event,Status,Latitude,Longitude,Max_Winds,Min_Pressure ,Low_Wind_NE ,Low_Wind_SE ,Low_Wind_SW ,Low_Wind_NW ,Moderate_Wind_NE ,Moderate_Wind_SE ,Moderate_Wind_SW ,Moderate_Wind_NW ,High_Wind_NE ,High_Wind_SE ,High_Wind_SW ,High_Wind_NW )
        VALUES (?, ?, ?, ?, 'NULL', ?, 'X', 'X', ?, -999, -999, -999, -999, -999, -999, -999, -999, -999, -999, -999, -999, -999);
        """
    
    args = [ID, Name, Date, Time , Status, maxWinds]
    #_conn.execute(sql)
    
    curr = _conn.execute(sql, args)

    sql = """
        INSERT INTO storm_date(ID,Name,Date,Time)
        VALUES (?, ?, ?, ?);
        """
    
    args = [ID, Name, Date, Time]
    #_conn.execute(sql)
    
    #from lab 7
    curr = _conn.execute(sql, args)

    sql = """
        INSERT INTO storm_type(ID,Name,Date,Time, Status)
        VALUES (?, ?, ?, ?, ?);
        """
    
    args = [ID, Name, Date, Time, Status]
    #_conn.execute(sql)
    
    #from lab 7
    curr = _conn.execute(sql, args)
    #res = curr.fetchall()

    # #Print tuples or rows
    # print('ID | Name | Date | Time | Low_Wind_NE | Low_Wind_SE | Low_Wind_SW | Low_Wind_NW | Moderate_Wind_NE | Moderate_Wind_SE | Moderate_Wind_SW | Moderate_Wind_NW | High_Wind_NE | High_Wind_SE | High_Wind_SW | High_Wind_NW')
    # for row in res:
    #     #data = '{:<10} {:<20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20} {:>20}'.format(*row)
    #     print(' | '.join([str(r) for r in row]))

def addPac(_conn):
    print(" *** Adding to Pacific DB *** ")

    ID = input("Input ID Tag(EX: AOP12345): ")
    Name = input("Input Name of Hurricane (EX: 'CARLA'): ")
    Date = input("Input date (Format: YYYY-MM-DD): ")
    Time = input("Input Time in 24 Format (EX: 1300): ")
    Status = input("Input Status of Hurricane: (Ex: HU, TS, TY): ")
    maxWinds = input("Input Max winds speeds in mph: ")



    sql = """
        INSERT INTO pacific_o(ID,Name,Date,Time,Event,Status,Latitude,Longitude,Max_Winds,Min_Pressure ,Low_Wind_NE ,Low_Wind_SE ,Low_Wind_SW ,Low_Wind_NW ,Moderate_Wind_NE ,Moderate_Wind_SE ,Moderate_Wind_SW ,Moderate_Wind_NW ,High_Wind_NE ,High_Wind_SE ,High_Wind_SW ,High_Wind_NW )
        VALUES (?, ?, ?, ?, 'NULL', ?, 'X', 'X', ?, -999, -999, -999, -999, -999, -999, -999, -999, -999, -999, -999, -999, -999);
        """
    
    args = [ID, Name, Date, Time , Status, maxWinds]
    #_conn.execute(sql)
    
    #from lab 7
    curr = _conn.execute(sql, args)
    sql = """
        INSERT INTO storm_date(ID,Name,Date,Time)
        VALUES (?, ?, ?, ?);
        """
    
    args = [ID, Name, Date, Time]
    #_conn.execute(sql)
    
    #from lab 7
    curr = _conn.execute(sql, args)

    sql = """
        INSERT INTO storm_type(ID,Name,Date,Time, Status)
        VALUES (?, ?, ?, ?, ?);
        """
    
    args = [ID, Name, Date, Time, Status]
    
    curr = _conn.execute(sql, args)

def viewAll(_conn):
    print(" *** Viewing Storm Date Table *** ")

    sql = """
        select * from storm_date;
        """
        
    _conn.execute(sql)
    
    #from lab 7
    curr = _conn.execute(sql)
    res = curr.fetchall()

    #Print tuples or rows
    print('ID | Name | Date | Time')
    for row in res:
        print(' | '.join([str(r) for r in row]))
    
def searchYear(_conn): 
    print(" *** Using Storm Date Table *** ")

    year = input("Input Year To Search For: ")

    sql = """
        SELECT * 
        From storm_date
        Where strftime('%Y',Date)= (?);
        """
    
    args = [year]
    
    curr = _conn.execute(sql, args)
    res = curr.fetchall()

    #Print tuples or rows
    print('ID | Name | Date | Time ')
    for row in res:
        print(' | '.join([str(r) for r in row]))

def updateName(_conn): 
    print(" *** Using Storm Date Table *** ")

    id = input("Input ID to edit Name: ")
    newName = input("Input New Name: ")

    sql = """
        UPDATE storm_date
        SET Name = (?)
        WHERE ID = (?)
        ;
        """
    
    args = [newName, id]
    
    curr = _conn.execute(sql, args)
    sql = """
        UPDATE atlantic_o
        SET Name = (?)
        WHERE ID = (?)
        ;
        """
    
    args = [newName, id]
    
    curr = _conn.execute(sql, args)

    sql = """
        UPDATE pacific_o
        SET Name = (?)
        WHERE ID = (?)
        ;
        """
    
    args = [newName, id]
    
    curr = _conn.execute(sql, args)

    sql = """
        UPDATE storm_type
        SET Name = (?)
        WHERE ID = (?)
        ;
        """
    
    args = [newName, id]
    
    curr = _conn.execute(sql, args)
    #res = curr.fetchall()

def updateID(_conn): 
    print(" *** Using Storm Date Table *** ")

    name = input("Input Name of Storm: ")
    id = input("Input New ID: ")
    

    sql = """
        UPDATE storm_date
        SET ID = (?)
        WHERE Name = (?)
        ;
        """
    
    args = [id, name]
    
    curr = _conn.execute(sql, args)
    #res = curr.fetchall()
    sql = """
        UPDATE storm_type
        SET ID = (?)
        WHERE Name = (?)
        ;
        """
    
    args = [id, name]
    
    curr = _conn.execute(sql, args)

    sql = """
        UPDATE pacific_o
        SET ID = (?)
        WHERE Name = (?)
        ;
        """
    
    args = [id, name]
    
    curr = _conn.execute(sql, args)

    sql = """
        UPDATE atlantic_o
        SET ID = (?)
        WHERE Name = (?)
        ;
        """
    
    args = [id, name]
    
    curr = _conn.execute(sql, args)

def eventRec(_conn): 
    print(" *** Using Storm Date Table *** ")
    

    sql = """
        SELECT ID, COUNT(*)
        FROM storm_date
        GROUP BY ID
        ;   
        """
    
    curr = _conn.execute(sql)
    res = curr.fetchall()

    #Print tuples or rows
    print('ID | Number of Entries/Recordings')    
    for row in res:
        print(' | '.join([str(r) for r in row]))

def typeCounts(_conn): 
    print(" *** Using Storm Date Table *** ")
    

    sql = """
        SELECT Status, COUNT(*)
        FROM storm_type
        GROUP BY Status
        ;   
        """
    
    curr = _conn.execute(sql)
    res = curr.fetchall()

    #Print tuples or rows
    print('Status | Count/Instances')    
    for row in res:
        print(' | '.join([str(r) for r in row]))

def deleteEntry(_conn): 
    print(" *** Using Storm Date Table *** ")

    name = input("Input Name Of Event to Delete Single entry: ")
    date = input("Input Date of Entry to Delete: ")
    time = input("Input Time of Entry to Delete: ")

    sql = """
        DELETE FROM storm_date
        WHERE Name = (?)
        AND Date = (?)
        AND Time = (?);
        """
    
    args = [name, date, time]
    
    curr = _conn.execute(sql, args)

    sql = """
        DELETE FROM atlantic_o
        WHERE Name = (?)
        AND Date = (?)
        AND Time = (?)
        ;
        """
    
    args = [name, date, time]
    
    curr = _conn.execute(sql, args)

    sql = """
        DELETE FROM pacific_o
        WHERE Name = (?)
        AND Date = (?)
        AND Time = (?)
        ;
        """
    
    args = [name, date, time]
    
    curr = _conn.execute(sql, args)

    sql = """
        DELETE FROM storm_type
        WHERE Name = (?)
        AND Date = (?)
        AND Time = (?)
        ;
        """
    
    args = [name, date, time]
    
    curr = _conn.execute(sql, args)

def deleteRecord(_conn): 
    print(" *** Using Storm Date Table *** ")

    id = input("Input ID Of Event to Delete Entire Record: ")

    sql = """
        DELETE FROM storm_date
        WHERE ID = (?)
        ;
        """
    
    args = [id]
    
    curr = _conn.execute(sql, args)

    sql = """
        DELETE FROM atlantic_o
        WHERE ID = (?)
        ;
        """
    
    args = [id]
    
    curr = _conn.execute(sql, args)

    sql = """
        DELETE FROM pacific_o
        WHERE ID = (?)
        ;
        """
    
    args = [id]
    
    curr = _conn.execute(sql, args)

    sql = """
        DELETE FROM storm_type
        WHERE ID = (?)
        ;
        """
    
    args = [id]
    
    curr = _conn.execute(sql, args)


########################################
def main():
    database = r"data.sqlite"

    #create a database connection
    conn = openConnection(database)

    print("***** Welcome To The NOAA Hurricane Archive ***** \n")
    print("--- Browse The NOAA Database --- \n")
    print("Type an action number to continue: ")

    print("1 --> View All Hurricanes in ATLANTIC OCEAN")#
    print("2 --> View All Hurricanes in PACIFIC OCEAN")#
    print("3 --> Add a Hurricane in Atlantic Ocean")#
    print("4 --> Add a Hurricane in Pacific Ocean")#
    print("5 --> View ALL Hurricanes")#
    print("6 --> Search ALL Hurricanes By Year")#
    print("7 --> Update Hurricane Name Given ID")#
    print("8 --> Update Hurricane ID Given Name")#
    print("9 --> Count Entries Of Each Phenomenon/Event")#
    print("10 --> View all Unique Status Types")#
    print("11 --> Delete Single Entry/Instance")#
    print("12 --> Delete Entire Record of Event")#
   

    option = int(input('Action #: '))
    with conn:
        if option == 0:
            main()
        if option == 1:
            viewAtl(conn)
        if option == 2:
            viewPac(conn)
        if option == 3:
            addAtl(conn)
            viewAtl(conn)
        if option == 4:
            addPac(conn)
            viewPac(conn)
        if option == 5:
            viewAll(conn)
        if option == 6:
            searchYear(conn)
        if option == 7:
           updateName(conn)
        if option == 8:
            updateID(conn)
        if option == 9:
            eventRec(conn)
        if option == 10:
            typeCounts(conn)
        if option == 11:
            deleteEntry(conn)
            viewAll(conn)
        if option == 12:
            deleteRecord(conn)
            viewAll(conn)
        
        

    closeConnection(conn, database)

if __name__ == '__main__':
    main()