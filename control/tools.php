
<?php
function get_btn($btn_name){
    echo "<input type='button' class='button $btn_name' value='$btn_name'>";
}

function get_form($link,$form_name,$arr_input,$arr_type,$arr_name){
    $form_class = strtolower($form_name); 
    ?>
    <div class="message <?php echo $form_class; ?>" >
        <div class="title">
            <?php echo $form_name; ?>
        </div>
        <form action="<?php echo $link;?>" method="post">
            <?php 
                get_input($arr_input,$arr_type,$arr_name);
            ?> 
       
        <div class="control">
            <input type="submit" class="controlBtn button" value="<?php echo strtolower($form_name); ?>">
            <div class="cancel button">cancel</div>
        </div>
        </form>
    </div>
    <?php
}


function get_input($arr_input, $arr_type,$arr_name) {
    $index = 0;
    foreach ($arr_input as $input) {
        $type = isset($arr_type[$index]) ? $arr_type[$index] : "text"; // Kiểm tra nếu có giá trị
        echo "<input name='$arr_name[$index]' type='$type' placeholder='$input'>";
        $index++;
    }
}

?>