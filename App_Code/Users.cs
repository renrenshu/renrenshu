using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// User 的摘要说明
/// </summary>
public class Users
{
    SqlConnection conn = null;//连接数据库的对象
    public Users()
    {
    }
    //下面这个方法是从数据库中查找数据的方法

    public void open()
    {
        conn = new SqlConnection();
        conn.ConnectionString = "Data Source=.; Initial Catalog=人人书; uid=sa; pwd=123456";//连接数据库的字符串 }
        if (conn.State == ConnectionState.Closed)
            {//判断数据库的连接状态，如果状态是关闭的话就将它打开
                conn.Open();//打开数据库连接
            }
    }

    public DataSet query()
    {
        open();
        string sql = "SELECT * FROM UserInformation";
        SqlCommand selectCmd = new SqlCommand(sql, conn);//从数据库中查询
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = selectCmd;
        DataSet ds = new DataSet();//DataSet是表的集合
        da.Fill(ds, "UserInformation");//将数据填充到DataSet
        close();//关闭连接
        return ds;//返回结果
    }

    //下面的方法是对数据库进行更新

    public bool update(string sql)
    {
        open();
        SqlCommand cmd = new SqlCommand();//表示要对数据源执行的SQL语句或存储过程
        cmd.CommandText = sql;//设置命令的文本
        cmd.CommandType = CommandType.Text;//设置命令的类型
        cmd.Connection = conn;//设置命令的连接
        int x = cmd.ExecuteNonQuery();//执行SQL语句//返回一个影响行数
        close();//关闭连接
        if (x > 0)

            return true;
        else

            return false;
    }

    //下面的connClose()方法是关闭数据库连接

    public void close()
    {
        if (conn.State == ConnectionState.Open)
        {//判断数据库的连接状态，如果状态是打开的话就将它关闭
            conn.Close();
        }
    }

    public bool Modify(string name, string phone, string password)
    //函数名：Modify
    //功能：  修改用户信息到数据库中
    //输入参数： name: 用户； phone： 电话号码； password： 密码；
    //返回值： 修改成功返回true,否则为false
    {
        string sql = "update UserInformation set uname = '" + name + "', uphone = '" + phone + "', upassword = '" + password + "'";
        if (update(sql))

            return true;
        else

            return false;
    }

    public bool Add(string name, string phone, string password)
    //函数名：Add
    //功能：  添加书用户信息到数据库中
    //输入参数： name: 用户名； phone： 电话号码； password： 密码；
    //返回值： 添加成功返回true,否则为false
    {
        string sql = "insert into UserInformation (uname, uphone, upassword) values ( '" + name + "', '" + phone + "', '" + password + "')";
        if (update(sql))

            return true;
        else

            return false;
    }
}