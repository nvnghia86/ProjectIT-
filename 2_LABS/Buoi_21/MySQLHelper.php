<?php 
/*
	Desc:Class hỗ trợ truy xuất MySQL sử dụng PDO
 */
class  MySQLHelper
{
	private $HostName;
	private $DBUser;
	private $DBPass;
	private $DBName;
	private $PDO;

	public function __construct($pHost,$pUser,$pPass,$pDBName)
	{
		$this->HostName = $pHost;
		$this->DBUser = $pUser;
		$this->DBPass = $pPass;
		$this->DBName = $pDBName;
		$this->PDO= $this->connect();
	}

	public function connect()
	{
		try
		{
			$conn = new PDO("mysql:host=$this->HostName;dbname=$this->DBName", $this->DBUser, $this->DBPass);
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$conn->exec("set character_set_results=utf8");
			$conn->query("set names utf8");
			return $conn;
		}
		catch(PDOException $e)
		{
			die('Lỗi kết nối tới Database:'.$e->getMessage());
		}
	}

	public function call_procedure($pProc,$params = array())
	{
		$data = null;
		try{
			$sql=" CALL $pProc";
            $stmt = $this->PDO->prepare($sql);
            $stmt->execute($params);
            $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
		}
		catch (PDOException $e) {
            $data['MA_LOI'] = 'ERR';
			$data['THONG_BAO'] = $e->getMessage();
			$data['KET_QUA'] = '';
        }
		return $data;
	}
}
 ?>