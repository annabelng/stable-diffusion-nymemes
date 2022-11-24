python main.py \
    -t \
    --base configs/stable-diffusion/new-yorker.yaml \
    --gpus 1,2,3,4,5 \
    --scale_lr False \
    --num_nodes 1 \
    --check_val_every_n_epoch 10 \
    --finetune_from /home/val/lsd/Models/sd-v1-4-full-ema.ckpt \
    data.params.batch_size = 1 \
    lightning.trainer.accumulate_grad_batches=1 \
    data.params.validation.params.n_gpus=5 \
