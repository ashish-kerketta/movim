<?php

use Movim\Migration;
use Illuminate\Database\Schema\Blueprint;

class ChangePictureTypeMessagesTable extends Migration
{
    public function up()
    {
        $this->schema->table('messages', function (Blueprint $table) {
            $table->dropColumn('picture');
        });

        $this->schema->table('messages', function (Blueprint $table) {
            $table->boolean('picture')->default(false);
            $table->index('picture');
        });
    }

    public function down()
    {
        $this->schema->table('messages', function (Blueprint $table) {
            $table->dropColumn('picture');
        });

        $this->schema->table('messages', function (Blueprint $table) {
            $table->text('picture')->nullable();
        });
    }
}
