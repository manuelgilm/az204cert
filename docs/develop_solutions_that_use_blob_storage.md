# Develop Solutions that use Blob Storage

## Explore Azure Blob Storage.

* What type of storage solution is Azure Blob Storage, and who provides it?

Azure Blob Storage is **Microsoft's cloud-based object storage solution**, optimized for storing large amounts of unstructured data.

*  How is unstructured data defined, and what are some examples of it?

Unstructured data is **data that does not follow a fixed schema or model**. Examples include text files, images, videos, audio, and binary.

* Why is Blob Storage particularly well-suited for unstructured data?

Blob Storage is designed to **scale massively**, handle diverse data formats, and provide global accessibility via HTTP/HTTPS, making it ideal for storing unstructured data like logs, media, or backups.

* What are some real-world scenarios where Blob storage can be applied?

    * Serving images and documents directly to browsers.
    * Streaming video and audio.
    * Storing log files.
    * Backup, restore, and disaster recovery.
    * Arching data
    * Providing input for data analysis services.

* Which tools or interfaces can developers use to interact with Blob storage?

    * The Azure Storage REST API
    * Azure CLI
    * Azure PowerShell
    * Azure Storage Client libraries (SDKs)

* What is an Azure Storage account, and what role does it play in managing Blob storage?

An Azure Storage account is the top-level container for all Azure Storage services, including Blob storage. It provides a globally unique namespace for your data and enables access over HTTP/HTTPS.

* what are the types of Storage Accounts available?
    * Standard: Recommended for most scenarios.
    * Premium: Offers higher performance by using solid-state drives. Under premium we have:
        * Block blobs
        * Page blobs
        * file shares
