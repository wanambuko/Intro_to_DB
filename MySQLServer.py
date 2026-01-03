#!/usr/bin/python3
import mysql.connector

try:
    # Connect to MySQL server
    connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="wanambuko123."
    )

    cursor = connection.cursor()
    # Create database if it does not exist
    cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as err:
    print(f"Failed to create database: {err}")

finally:
    if 'cursor' in locals():
        cursor.close()
    if 'connection' in locals() and connection.is_connected():
        connection.close()
