<h2 class="subtitle">{{i18n.account.settings.title}}</h2>

<div class="block">
    <h3>{{i18n.account.settings.hosting.title}}</h3>
    
    <p class="alert alert-info">
        <span class="label label-info">Statut</span> Actuellement, vos photos sont / seront gérées & hébergées automatiquement par ce site (aucune configuration de votre part n'est nécessaire).
    </p>
    <hr />
    <h3>{{i18n.account.settings.hosting.sources}}</h3>

    <form class="form-horizontal" method="post">

        {{#config.administrator}}
        <label class="checkbox">
            <input type="checkbox" name="hostingOption" value="local"> Je veux que debox accède en local aux photos hébergées sur ce serveur (administrateur uniquement).
        </label>
        
        {{/config.administrator}}
        <label class="checkbox">
            <input type="checkbox" name="hostingOption" value="debox" checked> Je veux que ce site gère tout seul la manière dont il héberge mes photos.
        </label>
        <div class="form-actions">
            <input type="submit" class="btn btn-primary" value="{{i18n.common.validate}}" />
        </div>
    </form>
    <!--    <ul>
            <li>Je ne possède pas de moyen de stockage de mes photos, je laisse cette tâche au site debox.fr</li>
            <li>Accès SSH sur un serveur distant</li>
            <li>Accès FTP sur un serveur distant</li>
            <li>Accès HTTP sur un serveur distant</li>
            <li>Je souhaite ajouter mes photos Facebook</li>
            <li>Je souhaite ajouter mes photos Flickr</li>
            <li>Je souhaite ajouter mes photos Picasa</li>
            <li>Je souhaite ajouter mes photos Instagram</li>
            <li>Je souhaite ajouter mes photos présentes sur mon compte Dropbox</li>
            <li>Je souhaite ajouter mes photos présentes sur mon compte Amazon S3</li>
            <li>Je souhaite ajouter mes photos présentes sur mon compte Google Drive</li>
        </ul>-->
</div>

<!--<div class="block">
    <h3>{{i18n.account.settings.albums.title}}</h3>
</div>

<form class="form-horizontal block">
    <h3>{{i18n.account.settings.photos.title}}</h3>
    <label class="checkbox">
        <input type="checkbox">Une photo est téléchargeable dans sa résolution d'origine par les visiteurs ayant accès à celle-ci.
    </label>
    <label class="checkbox">
        <input type="checkbox">Une photo est téléchargeable dans une résolution convenable (environ 2000px de côté) par les visiteurs ayant accès à celle-ci.
    </label>
    <label class="checkbox">
        <input type="checkbox">Une photo est tournable (incrément de 90°) par les visiteurs ayant accès à celle-ci.
    </label>
    <label class="checkbox">
        <input type="checkbox">Une photo est partageable sur Facebook par les visiteurs ayant accès à celle-ci.
    </label>
    <label class="checkbox">
        <input type="checkbox">Une photo est partageable sur Twitter par les visiteurs ayant accès à celle-ci.
    </label>
    <label class="checkbox">
        <input type="checkbox">Une photo est partageable par e-mail par les visiteurs ayant accès à celle-ci.
    </label>
    <label class="checkbox">
        <input type="checkbox">Les données EXIF d'une photo sont consultables par les visiteurs ayant accès à celle-ci.
    </label>
</form>

<form class="block">
    <h3></h3>
</form>-->