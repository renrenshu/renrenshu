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
	
    public bool Modify(int tableName, int no, string name, string author, string press, float price)
    //函数名：ModifyS
    //功能：  修改书籍/悬赏信息到数据库中
    //输入参数： tableName: 表明（书库为1，榜单为2）;no:该数据no; name: 书名； author： 作者； press： 出版社；price： 欲售价格/悬赏金额；
    //返回值： 修改成功返回true,否则为false
    {
        string time = DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");
        if(tableName == 1)
        {
            string sql = "update Stacks set bname = '" + name + "', bauthor = '" + author + "', bpress = '" + press + "', bprice = '" + price + "', btime = '" + time + "', where bno = '" + no +"'";
            if (update(sql))

                return true;
            else

                return false;
        }
        if (tableName == 2)
        {
            string sql = "update List set lname = '" + name + "', lauthor = '" + author + "', lpress = '" + press + "', loffer = '" + price + "', ltime = '" + time + "', where lno = '" + no + "'"; 
            if (update(sql))

                return true;
            else

                return false;
        }
        else

            return false;
    }

    public bool Add(int tableName, string name, string author, string press, float price, string picturePath)
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
                //byte[] picByte = ImageToByte(picturePath);
                string sql = "insert into Stack (bname, bauthor, bpress, bprice, btime, bpicture) values ( '" + name + "', '" + author + "', '" + press + "', '" + price + "', '" + time + "', '" + picturePath + "')";
                if (update(sql))

                    return true;
                else

                    return false;
            }
            else
            {
                string sql = "insert into Stacks (bname, bauthor, bpress, bprice, btime) values ( '" + name + "', '" + author + "', '" + press + "', '" + price + "', '" + time + "')";
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
                byte[] picByte = ImageToByte(picturePath);
                string sql = "insert into List (lname, lauthor, lpress, lprice, ltime, lpicture) values ( '" + name + "', '" + author + "', '" + press + "', '" + price + "', '" + time + "', '" + picByte + "')";
                if (update(sql))

                    return true;
                else

                    return false;
            }
            else
            {
                string sql = "insert into List (lname, lauthor, lpress, lprice, ltime) values ( '" + name + "', '" + author + "', '" + press + "', '" + price + "', '" + time + "')";
                if (update(sql))

                    return true;
                else

                    return false;
            }
        }
        else

            return false;
    }

    public bool Delete(int tableName, int no)
    ///函数名： Delete
    //功能：  删除书籍/悬赏信息
    //输入参数：tableName: 表明（书库为1，榜单为2）;no: 编号。
    //返回值： 删除成功返回true,否则为false
    {
        if (tableName == 1)
        {
            string sql = "delete from Stacks where bno = '"+ no +"'";
            if (update(sql))

                return true;
            else

                return false;
        }
        if (tableName == 2)
        {
            string sql = "delete from List where bno = '" + no + "'";
            if (update(sql))

                return true;
            else

                return false;
        }
        else

            return false;
    }

    public bool Cancel(int tableName, int no)
    ///函数名： Cancel
    //功能：  取消预定/揭榜
    //输入参数：tableName: 表明（书库为1，榜单为2）;no: 编号。
    //返回值： 取消成功返回true,否则为false
    {
        if (tableName == 1)
        {
            string sql = "delete from OrderRelationship where ono = '" + no + "'";
            if (update(sql))

                return true;
            else

                return false;
        }
        if (tableName == 2)
        {
            string sql = "delete from RewardRelationship where rno = '" + no + "'";
            if (update(sql))

                return true;
            else

                return false;
        }
        else

            return false;
    }

    public byte[] ImageToByte(string picturePath)
    ///函数名： ImageSave
    //功能： 将图片转化为二进制
    //输入参数：picturePath: 图片绝对地址。
    //返回值： 保存成功返回图片二进制数组,否则为空
    {
        try
        {
            //创建FileStream对象
            FileStream pic = new FileStream(picturePath, FileMode.Open);//picturePath是图片路径 
            //声明Byte数组
            byte[] picByte = new byte[pic.Length];
            //转换成二进制数据
            pic.Read(picByte, 0, picByte.Length);

            return picByte;
        }
        catch (Exception)
        {

            return null;
        }
    }

    public Image ByteToImage(byte[] picByte)
    //函数名： ByteToImage
    //功能：  图片从二进制转化为图片
    //输入参数：picByte: 图片二进制数组。
    //返回值： 读取成功返回图片,否则为null
    {
        if (picByte.Length == 0)
            return null;
        System.IO.MemoryStream ms = new System.IO.MemoryStream(picByte);
        System.Drawing.Image image = System.Drawing.Image.FromStream(ms);
        return image;
    }

}