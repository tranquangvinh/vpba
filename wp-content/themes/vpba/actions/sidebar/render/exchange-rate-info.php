<?php
function render_exchange_rate_info($exchange_url){ ?>
    <div class="exchange-rate-info">
        <iframe width="100%" src="<?php echo $exchange_url; ?>" frameborder="0"></iframe>
    </div>
<?php }