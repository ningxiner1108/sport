<?php
namespace Mobile\Model;
use Think\Model;
/**
 * 数据获取基本类
 * @author Ice iceinto@163.com
 */
class BaseModel extends Model
{

    /**
     * 根据标示默认获取数据信息
     * @param int $id 标示
     * @param string $fields 字段
     * @return array
     * @author Ice  <iceinto@163.com>
     */
    protected function findById($id, $fields = null)
    {
        return $this->field($fields)->find($id);
    }

    /**
     * 根据标示默认获取数据信息
     * @param array $map 查询条件
     * @param string $fields 字段
     * @param string $order 排序
     * @return array
     * @author Ice <iceinto@163.com>
     */
    protected function findByWhere($map = null, $fields = null, $order = null)
    {
        return $this->where($map)->field($fields)->order($order)->find();
    }

    /**
     * 获取数据列表
     * @param array $map 查询条件
     * @param string $limit 分页
     * @param string $order 排序
     * @param string $fields 字段
     * @return array
     * @author Ice <iceinto@163.com>
     */
    protected function selectByWhere($map = null, $fields = null, $limit = null, $order = null)
    {
        return $this->where($map)->limit($limit)->order($order)->field($fields)->select();
    }

    /**
     * 获取条件数量
     * @param array $where
     * @author Ice <iceinto@163.com>
     */
    public function getWhereCount($where)
    {
        return $this->where($where)->count();
    }

    /**
     * 根据itemid更新状态信息
     * @param $itemid
     * @param $status
     * @return bool
     */
    public function editStatusById($itemid, $status)
    {
        $data = array();
        $data['id'] = $itemid;
        $data['status'] = $status;
        return $this->save($data);
    }


}

?>