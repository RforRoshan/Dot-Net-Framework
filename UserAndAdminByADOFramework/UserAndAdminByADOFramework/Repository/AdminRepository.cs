using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using UserAndAdminByADOFramework.Model;

namespace UserAndAdminByADOFramework.Repository
{
    public class AdminRepository
    {

        SqlConnection myConnection;
        SqlCommand myCommand;
        public AdminRepository()
        {
            myConnection = new SqlConnection("server=TRAININGDB02;database=RKSAHU_UserDB;Trusted_Connection=True;TrustServerCertificate=True");
        }
        public bool CreateOrEditUser(User user, string statementType)
        {

            int status = 0;
            myCommand = new SqlCommand();
            myCommand.CommandText = "SP_UsesAddAdminByADOFramework";
            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.Parameters.AddWithValue("@UsrID", user.UsrID);
            myCommand.Parameters.AddWithValue("@Name", user.Name);
            myCommand.Parameters.AddWithValue("@DateOfBirth", user.DateOfBirth);
            myCommand.Parameters.AddWithValue("@City", user.City);
            myCommand.Parameters.AddWithValue("@CompanyName", user.CompanyName);
            myCommand.Parameters.AddWithValue("@Experience", user.Experience);
            myCommand.Parameters.AddWithValue("@ProgrammingSkills", user.ProgrammingSkills);
            myCommand.Parameters.AddWithValue("@StatementType", statementType);
            myCommand.Connection = myConnection;
            try
            {

                myConnection.Open();
                status = myCommand.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                myConnection.Close();
            }
            if (status == 1)
            {
                return true;

            }
            else
            {
                return false;
            }
        }
        public List<User> GetAllUsers()
        {
            List<User> users = new List<User>();
            myCommand = new SqlCommand();
            myCommand.CommandText = "SP_UsesAddAdminByADOFramework";
            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.Parameters.AddWithValue("@StatementType", "selectall");
            myCommand.Connection = myConnection;
            try
            {
                myConnection.Open();
                SqlDataReader reader = myCommand.ExecuteReader();
                while (reader.Read())
                {
                    User user = new User();
                    user.UsrID = reader.GetString(0);
                    user.Name = reader.GetString(1);
                    user.DateOfBirth = reader.GetString(2);
                    user.CompanyName = reader.GetString(4);
                    user.Experience = reader.GetString(5);
                    user.ProgrammingSkills = reader.GetString(6);
                    user.City = reader.GetString(3);
                    users.Add(user);
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                myConnection.Close();
            }
            return users;
        }
        public User GetUserDetails(string usrID)
        {
            User user = new User();
            myCommand = new SqlCommand();
            myCommand.CommandText = "SP_UsesAddAdminByADOFramework";
            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.Parameters.AddWithValue("@UsrID", usrID);
            myCommand.Parameters.AddWithValue("@StatementType", "select");
            myCommand.Connection = myConnection;
            try
            {
                myConnection.Open();
                SqlDataReader reader = myCommand.ExecuteReader();
                if (reader.Read())
                {
                    user.UsrID = reader.GetString(0);
                    user.Name = reader.GetString(1);
                    user.DateOfBirth = reader.GetString(2);
                    user.CompanyName = reader.GetString(4);
                    user.Experience = reader.GetString(5);
                    user.ProgrammingSkills = reader.GetString(6);
                    user.City = reader.GetString(3);
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine("error");
            }
            finally
            {
                myConnection.Close();
            }
            return user;
        }
        public bool Deleteuser(string UsrID)
        {

            int status = 0;
            myCommand = new SqlCommand();
            myCommand.CommandText = "SP_UsesAddAdminByADOFramework";
            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.Parameters.AddWithValue("@UsrID", UsrID);
            myCommand.Parameters.AddWithValue("@StatementType", "Delete");
            myCommand.Connection = myConnection;
            try
            {

                myConnection.Open();
                status = myCommand.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                myConnection.Close();
            }
            if (status == 1)
            {
                return true;

            }
            else
            {
                return false;
            }
        }
        public bool Login(string usrID,string password)
        {
            bool status=false;
            myCommand = new SqlCommand();
            myCommand.CommandText = "SP_UsesAddAdminByADOFramework";
            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.Parameters.AddWithValue("@UsrID", usrID);
            myCommand.Parameters.AddWithValue("@UserPassword", password);
            myCommand.Parameters.AddWithValue("@StatementType", "login");
            myCommand.Connection = myConnection;
            try
            {
                myConnection.Open();
                SqlDataReader reader = myCommand.ExecuteReader();
                if (reader.Read())
                {
                    status= true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("error");
            }
            finally
            {
                myConnection.Close();
            }
            return status;
        }
    }
}