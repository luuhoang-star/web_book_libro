<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class OrderResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'code_order' => $this->code_order,
            'total_price' => $this->total_price,
            'note' => $this->note,
            'payment_method' => $this->getPaymentMethodName(),
            'user_name' => $this->user_name,
            'user_email' => $this->user_email,
            'user_phone' => $this->user_phone,
            'user_address' => $this->user_address,
            'shipping_name' => $this->shipping_name,
            'shipping_phone' => $this->shipping_phone,
            'shipping_address' => $this->shipping_address,
            'shipping_email' => $this->shipping_email,
            'status' => $this->status ? $this->status->name : null,
            'voucher' => $this->voucher ? $this->voucher->code : null,
            'voucher_discount' => $this->voucher ? $this->voucher->discount : null,
            'voucher_discount_type' => $this->voucher ? $this->voucher->discount_type : null,
            'user' => $this->user ? $this->user->username : null,
            'created_at' => $this->created_at->format('d/m/Y'),
            'order_details' => OrderDetailResource::collection($this->orderDetails),
        ];
    }
    private function getPaymentMethodName()
    {
        return match ($this->payment_method) {
            0 => 'COD',
            1 => 'VNPay',
            default => 'Không xác định',
        };
    }
}
