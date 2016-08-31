<?php if (!defined('THINK_PATH')) exit(); if(is_array($tree)): $i = 0; $__LIST__ = $tree;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><dl class="cate-item">
    <dt class="cf">
    <div class="fold"><i></i></div>
    <label>
    <div class="order"> 
       <?php if($list["gid"] == null): ?><input class="cate_id" type="checkbox" name="gymid[]" value="<?php echo ($list["id"]); ?>">
       <?php elseif($list["shid"] == null): ?>
           <input class="cate_id" type="checkbox" name="shid[]" value="<?php echo ($list["id"]); ?>">
       <?php elseif($list["spaceid"] == null): ?>
           <input class="cate_id" type="checkbox" name="spaceid[]" value="<?php echo ($list["id"]); ?>">
       <?php else: ?>
           <input class="cate_id" type="checkbox" name="placeid[]" value="<?php echo ($list["id"]); ?>"><?php endif; ?>
       </div>
    <div class="name">
            <span class="tab-sign"></span>
            <?php echo ($list["name"]); ?>
            <span class="help-inline msg"></span>
        </div>
    </label>
    </dt>
    <?php if(!empty($list['_'])): ?><dd>
    <?php echo R('AuthManager/tree', array($list['_']));?>
    </dd><?php endif; ?>
</dl><?php endforeach; endif; else: echo "" ;endif; ?>