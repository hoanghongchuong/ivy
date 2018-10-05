<?php namespace App\Http\Requests;

use App\Http\Requests\Request;


class LangRequest extends Request {

	/**
	 * Determine if the user is authorized to make this request.
	 *
	 * @return bool
	 */
	public function authorize()
	{
		return true;
	}

	/**
	 * Get the validation rules that apply to the request.
	 *
	 * @return array
	 */
	public function rules()
	{
		return [
			'txtName_vi' => 'required|unique:langs,name_vi',
		];
	}
	public function messages()
	{
		return [
			'txtName_vi.required' => 'Bạn chưa nhập tên ngôn ngữ',
            'txtName_vi.unique' => 'Tên ngôn ngữ bị trùng, mời nhập lại',
            'txtAlias.required' => 'Bạn chưa nhập link tĩnh',
		];
	}
}
