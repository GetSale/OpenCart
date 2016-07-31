<?php echo $header; ?>
<?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-category" data-toggle="tooltip"
                        title="<?php echo $button_save; ?>"
                        class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip"
                   title="<?php echo $button_cancel; ?>"
                   class="btn btn-default"><i class="fa fa-reply"></i></a></div>
            <h1><?php echo $heading_title; ?></h1>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li>
                    <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                </li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
        <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i
                    class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php }
            if ($getsale_id) { ?>
        <div class="alert alert-success">
            <i class="fa fa-exclamation-circle"></i> Поздравляем! Ваш сайт успешно привязан к
            аккаунту <a href="http://getsale.io" target="_blank">getSale.io</a>.
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>

        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i><?php echo $text_edit; ?></h3>
            </div>
            <div class="panel-body">
                <p><b>getSale</b> — профессиональный инструмент для создания popup-окон.</p>

                <p>Оцените принципиально новый подход к созданию popup-окон.</p>
                <hr>

                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data"
                      id="form-category"
                      class="form-horizontal">
                    <?php /*if ($getsale_id) { ?>
                    <?php echo $entry_getsale_id . ' ' . $getsale_id?>
                    <? }*/ ?>
                    <div id="settings"
                    <?php /*if ($getsale_id) { echo "style='display:none'"; }*/ ?>>

                    <input id="getsale_id" type="hidden" name="getsale_id"
                           value="<?php echo isset($getsale_id) ? $getsale_id : ''; ?>"/>

                    <input id="getsale_code" type="hidden" name="getsale_code" value="<?php echo isset($getsale_code) ? trim(htmlspecialchars($getsale_code)) : '' ; ?>">

                    <div class="form-group <?php if (!$getsale_id) echo "required";?>">
                        <label class="col-sm-2 control-label"
                               for="input-name"><?php echo $text_email; ?></label>

                        <div class="col-sm-10">
                            <input type="text" name="getsale_email" id="getsale_email"
                                   value="<?php echo isset($getsale_email) ? $getsale_email : ''; ?>"
                                   placeholder="<?php echo $email_placeholder; ?>"
                                   class="form-control" size="50"
                                   style="width: auto; display: inline-block" <?php if ($getsale_id) { echo "disabled"; } ?>/>
                            <?php if ($getsale_id) { echo '<i class="fa fa-check fa-2x text-success"></i>
                            '; } ?>
                        </div>
                    </div>
                    <div class="form-group <?php if (!$getsale_id) echo "required";?>">
                        <label class="col-sm-2 control-label"
                               for="input-name"><?php echo $text_key; ?></label>

                        <div class="col-sm-10">
                            <input type="text" name="getsale_key" id="getsale_key"
                                   value="<?php echo isset($getsale_key) ? $getsale_key : ''; ?>"
                                   placeholder="<?php echo $key_placeholder; ?>"
                                   class="form-control" size="50"
                                   style="width: auto; display: inline-block" <?php if ($getsale_id) { echo "disabled"; } ?>/>
                             <?php if ($getsale_id) { echo '<i class="fa fa-check fa-2x text-success"></i>
                            '; } ?>
                        </div>
                    </div>
                    <div class="form-group" style="display: none; visibility: hidden">
                        <label class="col-sm-2 control-label"
                               for="input-name"></label>

                        <div class="col-sm-10">
                            <input type="text" name="url" value="<?php echo $url; ?>" id="getsale_url"
                                   class="form-control"/>
                        </div>
                    </div>
            </div>
            </form>
            <?php if (!$getsale_id) { ?>
            <div class="help_msg">
                <p>Введите email и ключ API из личного кабинета <a href="http://getsale.io"
                                                                   target="_blank">getSale.io</a>
                </p>

                <p>Если вы ещё не зарегистрировались в сервисе getSale это можно сделать по ссылке
                    <a href="http://getsale.io" target="_blank">getSale.io</a></p>
            </div>
            <?php } ?>
            <hr>
            <div class="help_succ_msg" style="display: none;">
                <p><?php echo $succ_mess1;?> <a href="http://getsale.io" target="_blank">getSale.io</a> <? echo $succ_mess2;?>
                </p>
            </div>
            <?php if ($getsale_id) {
               echo "<p>";
            echo $succ_mess1;?> <a href="http://getsale.io" target="_blank">getSale.io</a> <? echo $succ_mess2;
               echo "</p>";
            }
            echo '<p>';
            echo $tech_support;?> <a href="mailto:plugins@getsale.io">plugins@getsale.io</a></p>
            <p>OpenCart getSale ver.<?php echo $ver;?></p>
        </div>
    </div>
</div>
</div>
<?php echo $footer; ?>
