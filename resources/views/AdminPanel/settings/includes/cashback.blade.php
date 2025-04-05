<!-- form -->
<div class="row">
    <div class="divider">
        <div class="divider-text">{{ trans('common.cashbackSettings') }}</div>
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="cashBackValue">{{ trans('common.cashBackValue') }}</label>
        {{ Form::number('cashBackValue', getSettingValue('cashBackValue'), ['id' => 'cashBackValue', 'class' => 'form-control', 'min' => '0', 'max' => '100']) }}
    </div>
</div>

<!--/ form -->
