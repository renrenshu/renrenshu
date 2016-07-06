using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Drawing.Imaging;
using System.Drawing;

/// <summary>
/// Database 的摘要说明
/// </summary>
public class Database
{
    SqlConnection conn = null;//连接数据库的对象

 
//下面是构造函数连接数据库

    public Database()
    {
    }
 
//下面这个方法是从数据库中查找数据的方法
 
    public DataSet query(string sql)
    {
        open();//打开连接
        DataSet ds = new DataSet();//DataSet是表的集合
        SqlDataAdapter da = new SqlDataAdapter(sql,conn);//从数据库中查询
        da.Fill(ds,"base");//将数据填充到DataSet
        close();//关闭连接
        return ds;//返回结果
    }
 
//下面的方法是对数据库进行更新
 
    public bool update(string sql)
    {
        open();//打开连接
        SqlCommand cmd = new SqlCommand();//表示要对数据源执行的SQL语句或存储过程
        cmd.CommandText = sql;//设置命令的文本
        cmd.CommandType = CommandType.Text;//设置命令的类型
        cmd.Connection = conn;//设置命令的连接
        
        int x=cmd.ExecuteNonQuery();//执行SQL语句//返回一个影响行数
        close();//关闭连接
        if(x > 0)

            return true;
        else

            return false;
    }

    //下面的connOpen()方法是打开数据库连接

    public void open()
    {
        conn = new SqlConnection();
        conn.ConnectionString = "Data Source=.; Initial Catalog=人人书; Persist Security Info=True; uid=sa; pwd=123456";//连接数据库的字符串 }
        if (conn.State == ConnectionState.Closed)
        {
            //conn.Open();//打开数据库连接
            try
            {
                conn.Open();
            }
            catch
            {
                Console.Write("连接失败");
            }

        }
    } 

//下面的connClose()方法是关闭数据库连接
 
    public void close()
    {
        if (conn.State == ConnectionState.Open)
        {//判断数据库的连接状态，如果状态是打开的话就将它关闭
            conn.Close();  
        }
    }

    public bool Modify(int tableName, int no, string name, string author, string press, float price, string introduction, string picture)
    //函数名：ModifyS
    //功能：  修改书籍/悬赏信息到数据库中
    //输入参数： tableName: 表明（书库为1，榜单为2）;no:该数据no; name: 书名； author： 作者； press： 出版社；price： 欲售价格/悬赏金额；
    //返回值： 修改成功返回true,否则为false
    {
        string time = DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");
        if(tableName == 1)
        {
            string sql = "update Stack set bname = '" + name + "', bauthor = '" + author + "', bpress = '" + press + "', bprice = '" + price + "', btime = '" + time + "', bintro = '" + introduction + "', bpicture = '" + picture + "' where bno = '" + no + "'";
            if (update(sql))

                return true;
            else

                return false;
        }
        if (tableName == 2)
        {
            string sql = "update List set lname = '" + name + "', lauthor = '" + author + "', lpress = '" + press + "', loffer = '" + price + "', ltime = '" + time + "', lintro = '" + introduction + "', lpicture = '" + picture + "' where lno = '" + no + "'"; 
            if (update(sql))

                return true;
            else

                return false;
        }
        else

            return false;
    }
    /// <summary>
    /// 改变网站状态
    /// </summary>
    /// <param name="state"> 网站状态值</param>
    /// <returns></returns>
    public bool Modifstate(bool state)
    {
        string sql = "update state set webstate = '" + state + "'";
        if (update(sql))

            return true;
        else

            return false;
    }

    public bool Add(int tableName, string name, string author, string press, float price, string intro, string picturePath)
    //函数名：Add
    //功能：  添加书籍/悬赏信息到数据库中
    //输入参数： tableName: 表明（书库为1，榜单为2）;name: 书名； author： 作者； press： 出版社；price： 欲售价格；  picturePath： 图片绝对地址；
    //返回值： 添加成功返回true,否则为false
    {
        string time = DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");
        if (tableName == 1)
        {
            if (picturePath != null)
            {
                string sql = "insert into Stack (bname, bauthor, bpress, bprice, btime, bintro, bpicture) values ( '" + name + "', '" + author + "', '" + press + "', '" + price + "', '" + time + "', '" + intro + "', '" + picturePath + "')";
                if (update(sql))

                    return true;
                else

                    return false;
            }
            else
            {
                string sql = "insert into Stack (bname, bauthor, bpress, bprice, btime, bintro) values ( '" + name + "', '" + author + "', '" + press + "', '" + price + "', '" + time + "', '" +intro+ "')";
                if (update(sql))

                    return true;
                else

                    return false;
            }
        }
        if (tableName == 2)
        {
            if (picturePath != null)
            {
                string sql = "insert into List (lname, lauthor, lpress, loffer, ltime, lintro, lpicture) values ( '" + name + "', '" + author + "', '" + press + "', '" + price + "', '" + time + "', '" + picturePath + "', '" + intro + "')";
                if (update(sql))

                    return true;
                else

                    return false;
            }
            else
            {
                string sql = "insert into List (lname, lauthor, lpress, loffer, ltime , lintro) values ( '" + name + "', '" + author + "', '" + press + "', '" + price + "', '" + time + "', '" + intro + "')";
                if (update(sql))

                    return true;
                else

                    return false;
            }
        }
        else

            return false;
    }
    public bool addcomment(string title, string content,string name)
    {
        string time = DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");
        string sql = "insert into CommentArea (title, comment,time, person) values ( '" + title + "', '" + content + "', '" + time + "', '" + name + "')";
        if (update(sql))

            return true;
        else

            return false;
    }
    public bool DeleteRelationship(int tableName, int user, int no)
    ///函数名： DeleteRelationship
    //功能：  删除预定/揭榜信息（买）
    //输入参数：tableName: 表明（预定表为1，揭榜表为2）;no: 编号。
    //返回值： 删除成功返回true,否则为false
    {
        if (tableName == 1)
        {
            string sql = "delete from OrderRelationship where bno = '" + no + "' AND buyer = '" + user + "'";
            if (update(sql))

                return true;
            else

                return false;
        }
        if (tableName == 2)
        {
            string sql = "delete from RewardRelationship where lno = '" + no + "' AND mandatory = '" + user + "'";
            if (update(sql))

                return true;
            else

                return false;
        }
        else

            return false;
    }
    public bool DeleteRelationship1(int tableName, int user, int no)
    ///函数名： DeleteRelationship
    //功能：  删除预定/揭榜信息(卖)
    //输入参数：tableName: 表明（预定表为1，揭榜表为2）;no: 编号。
    //返回值： 删除成功返回true,否则为false
    {
        if (tableName == 1)
        {
            string sql = "delete from OrderRelationship where bno = '" + no + "' AND seller = '" + user + "'";
            if (update(sql))

                return true;
            else

                return false;
        }
        if (tableName == 2)
        {
            string sql = "delete from RewardRelationship where lno = '" + no + "' AND client = '" + user + "'";
            if (update(sql))

                return true;
            else

                return false;
        }
        else

            return false;
    }
    public bool DeleteInformation(int tableName, int no)
    ///函数名： DeleteInformation
    //功能：  删除书籍/悬赏信息
    //输入参数：tableName: 表明（书库为1，榜单为2）;no: 编号。
    //返回值： 删除成功返回true,否则为false
    {
        if (tableName == 1)
        {
            string sql = "delete from Stack where bno = '"+ no +"'";
            if (update(sql))

                return true;
            else

                return false;
        }
        if (tableName == 2)
        {
            string sql = "delete from List where lno = '" + no + "'";
            if (update(sql))

                return true;
            else

                return false;
        }
        else

            return false;
    }
    public bool Delete_U(int tableName, int user, int no)
    ///函数名： DeleteU_
    //功能：  删除人书/悬赏链接信息
    //输入参数：tableName: 表明（U_S为1，U_L为2）;user: 用户id;no: 编号。
    //返回值： 删除成功返回true,否则为false
    {
        if (tableName == 1)
        {
            string sql = "delete from U_S where uid = '"+ user +"' AND bno = '" + no + "'";
            if (update(sql))

                return true;
            else

                return false;
        }
        if (tableName == 2)
        {
            string sql = "delete from U_L where uid = '" + user + "' AND lno = '" + no + "'";
            if (update(sql))

                return true;
            else

                return false;
        }
        else

            return false;
    }
}